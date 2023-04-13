# testpypi

Throwaway repo to test how pip handles pre-releases.

## Note

To have nightlies (or any other type of pre-releases generated often) one might actually use testpypi to avoid polluting pypi.org package space.

Just remember to use `--extra-index-url` instead of `--index-url` when adding to a `requirements.txt`, otherwise other packages will fail to install (or download older versions).

TensorFlow just went with the option of using a [different package](https://pypi.org/project/tf-nightly) for nightly builds, another option.

## Tests

...