OUT := ALL

all: $(OUT)/dumps

$(OUT)/dumps:
	mkdir -p $(OUT)/dumps
	cd $(OUT)/dumps; zstd -d --stdout ~/nfcaps.tar.zst | tar -xv
	touch $@

$(OUT)/cleaned: | $(OUT)/dumps
	mkdir -p $(OUT)/cleaned
	for file in $(OUT)/dumps/nfcapd.* ; \
	do \
	    nice nfdump -y -r $$file -w $(OUT)/cleaned/$${file##*/} 'router ip 10.156.119.1 and if 83 and duration < 1000000' ; \
	done
	touch $@

$(OUT)/merged: | $(OUT)/cleaned
	nice pypy3 -m flow_models.merge -i nfcapd -o binary -I 15 -A 300 -O $@ $<
	touch $@

$(OUT)/sorted: | $(OUT)/merged
	nice python3 -m flow_models.sort -k first first_ms -O $@ $<
	touch $@
sorted: $(OUT)/sorted

include pipeline.mk
