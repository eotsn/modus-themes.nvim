FNL_FILES = modus-operandi.fnl modus-operandi-tinted.fnl
LUA_FILES = $(FNL_FILES:%.fnl=colors/%.lua)

.PHONY: all clean

all: $(LUA_FILES)

colors/%.lua: %.fnl modus-themes.fnl
	@mkdir -p $(@D)
	fennel --compile $< > $@

clean:
	rm -rf colors/
