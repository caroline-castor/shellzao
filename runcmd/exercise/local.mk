# Project-specific rules

# Use this rule to boostrap a new exercise.

SKEL=skeleton

$(SKEL:%=%) : $(SKEL:%=%).tgz

#skeleton.tgz : $(proj_src) $(proj_headers) $(EXTRA_DIST) $(gendist_files)
skeleton.tgz : runcmd.c Makefile runcmd.h
	rm -rf $(SKEL:%=%)
	mkdir $(SKEL:%=%)
	cp $^ $(SKEL:%=%)
	tar zcvf $(SKEL:%=%).tgz $(SKEL:%=%)

