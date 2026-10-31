OUT := ALL

all: $(OUT)/histograms/length.csv

SORTED_SRC := ../../ALL/sorted
FILTER := (af == 2) & (prot == 17)
FIT_length_flows := -i 400 -U 4 -L 9
FIT_length_packets := -i 400 -U 7 -L 5
FIT_length_octets := -i 400 -U 7 -L 5
FIT_size_flows := -i 200 -U 0 -L 9
FIT_size_packets := -i 200 -U 0 -L 9
FIT_size_octets := -i 200 -U 0 -L 9

include ../../pipeline.mk
