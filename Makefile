cleandist:
	rm -fr src/dist

pub: cleandist
	cd src && \
	python -m build && \
	twine upload --repository testpypi dist/*

buildtools:
	pip install build twine

setv: VERSION := 1.0.0
setv:
	echo "__version__ = '$(VERSION)'" > src/testpypisk/__init__.py

pubv: setv
	make pub

puball:
	make pubv VERSION=1.0.0
	make pubv VERSION=1.0.0.dev1
	make pubv VERSION=1.0.0.dev2
	make pubv VERSION=1.0.0.dev10
	make pubv VERSION=1.0.1
	make pubv VERSION=9999.0.0.dev2
	make pubv VERSION=9999.0.0.dev10
	make setv VERSION=1.0.0
