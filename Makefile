FILES := META-INF common config.sh module.prop

dist/magisk-mi-a1-disable-hardware-light.zip: $(FILES) Makefile
	mkdir -p dist
	zip -9 -r "$@" $(FILES)
