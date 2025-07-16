SUBDIRS := 01

.PHONY: all $(SUBDIRS) clean

all: $(SUBDIRS)

$(SUBDIRS):
	"$(MAKE)" -C $@

clean:
	for d in $(SUBDIRS); do "$(MAKE)" -C $$d clean; done
