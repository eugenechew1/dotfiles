OS := $(shell uname)

# print any variable
print-%:
	@echo "$*="
	for FILE in $($*); do echo $$FILE; done

run: 
	$(info $(FOO) $(origin FOO))

install: 
	if [ $(OS) ]
	@echo Operating system is $(OS)

