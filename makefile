TEX = pandoc
src = template.tex letter.md
FLAGS = --pdf-engine=tectonic

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf

send: send.sh
	./send.sh $(filter-out $@,$(MAKECMDGOALS))

# Ignore any command-line arguments passed to make
%:
	@:
