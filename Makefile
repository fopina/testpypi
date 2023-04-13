pub:
	cd src && \
	python -m build && \
	twine upload --repository testpypi dist/*

buildtools:
	pip install build twine
