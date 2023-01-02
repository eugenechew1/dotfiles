
FOO:="FOO"

# print any variable
print-%:
	@echo "$*="
	for FILE in $($*); do echo $$FILE; done

run: 
	$(info $(FOO) $(origin FOO))
