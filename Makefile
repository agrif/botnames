# simple Makefile to build botnames.smx (if you need it)
# this file is in the public domain

# set this to where you have the SourcePawn compiler installed
SPCOMP=/home/agrif/valve/orangebox/tf/addons/sourcemod/scripting/spcomp

.PHONY : all clean

all : botnames.smx

clean :
	rm -f *.smx

%.smx : %.sp
	$(SPCOMP) $< -o$@
