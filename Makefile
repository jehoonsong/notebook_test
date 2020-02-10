NB_SRC=$(wildcard *.ipynb)
HTML_OBJ=$(addprefix result/,$(patsubst %.ipynb,%.html,$(NB_SRC)))

all: $(HTML_OBJ)

result/%.html: %.ipynb
	jupyter nbconvert --to html $< --output $@

clean: 
	rm -f $(HTML_OBJ)
