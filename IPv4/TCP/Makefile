OUT := ALL

all: $(OUT)/histograms/length.csv

SORTED_SRC := ../../ALL/sorted
FILTER := (af == 2) & (prot == 6)
FIT_length_flows := -i 500 -U 6 -L 4
FIT_length_packets := -i 500 -U 6 -L 4
FIT_length_octets := -i 400 -U 2 -L 4

include ../../pipeline.mk
