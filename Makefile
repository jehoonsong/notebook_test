ipynb=$(wildcard *.ipynb)
html=$(addprefix result/,$(patsubst %.ipynb,%.html,$(ipynb)))

all: $(html)

result/%.html: %.ipynb
	jupyter nbconvert --to html $< --output $@


