LOCALBASE = ../../
include $(LOCALBASE)Make.env
include $(BASEDIR)Make.env

FILES = b/base.css \
        b/paper/add.css

all: preload $(FILES)

preload:
	@mkdir -p b/
	@mkdir -p b/paper/

b/base.css: index.css

b/paper/add.css: modules/indicator.css paper/mku_set.css \
                 paper/add.css

%.css:
	$(CSSGLUE) $^ > $@


clean:
	@rm -f $(FILES)
