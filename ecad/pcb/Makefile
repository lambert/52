PROJNAME = 52_INPUT_CHANNEL_X

LAYOUTS = \
	52.002.00.01.01.pcb \
	52.003.00.01.01.pcb

pcb_SOURCES := $(wildcard *.pcb)

bom_TARGETS := $(patsubst %.pcb,%.bom,$(pcb_SOURCES))

gbr_TARGETS := $(patsubst %.pcb,%.gbr,$(pcb_SOURCES))

pdf_TARGETS := $(patsubst %.pcb,%.pdf,$(pcb_SOURCES))

png_TARGETS := $(patsubst %.pcb,%.png,$(pcb_SOURCES))

ps_TARGETS := $(patsubst %.pcb,%.ps,$(pcb_SOURCES))

%.bom: %.pcb
	pcb -x bom --xy-in-mm $<
#	mv -u *.bom fab/

*.gbr: %.pcb
	pcb -x gerber $<
#	mv -u *.gbr fab/
#	mv -u *.cnc fab/

%.png: %.pcb
	pcb -x png --photo-mode --as-shown --only-visible --dpi 300 $<
#	mv -u *.png eyecandy/

%.ps: %.pcb
	pcb -x ps --show-legend --media A3 --align-marks --outline --auto-mirror $<

%.pdf: %.ps
	ps2pdf -dOptimize=true -dUseFlateCompression=true -sPAPERSIZE=a4 $<
#	mv *.pdf plotfiles/
#	rm -f *.ps

all: \
	$(bom_TARGETS) \
	$(gbr_TARGETS) \
	$(png_TARGETS) \
	$(ps_TARGETS) \
	$(pdf_TARGETS)

