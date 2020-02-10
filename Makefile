all: html 

html: results/test.html 

results/%.html: %.ipynb
	jupyter nbconvert --to html $< --output $@
