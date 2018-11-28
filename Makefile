# In case of burn error do:
# sudo kextunload -b com.FTDI.driver.FTDIUSBSerialDriver

PROJ = blinky
BUILD = ./build
DEVICE = 1k
FOOTPRINT = cb121

FILES = top.v

all:
	yosys -p "synth_ice40 -top top -blif $(BUILD)/$(PROJ).blif" $(FILES)
	arachne-pnr -d $(DEVICE) -P $(FOOTPRINT) -o $(BUILD)/$(PROJ).asc -p pinmap.pcf $(BUILD)/$(PROJ).blif
	icepack $(BUILD)/$(PROJ).asc $(BUILD)/$(PROJ).bin


burn:
	~/CppWorkspace/icestorm/iceprog/iceprog  $(BUILD)/$(PROJ).bin
