all: _site

_site: *.md papers/* _includes/*
	jekyll build

clean:
	rm -r _site

deploy: all
	rsync -avz _site/ ckanich@bert.cs.uic.edu:www/
