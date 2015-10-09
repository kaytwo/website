all: _site

_site: *.md papers/* _includes/*
	jekyll build --full-rebuild

clean:
	rm -r _site

deploy: all
	rsync -avz _site/ ckanich@bert.cs.uic.edu:www/
