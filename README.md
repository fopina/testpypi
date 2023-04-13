# testpypi

Throwaway repo to test how pip handles pre-releases.

## Note

To have nightlies (or any other type of pre-releases generated often) one might actually use testpypi to avoid polluting pypi.org package space.

Just remember to use `--extra-index-url` instead of `--index-url` when adding to a `requirements.txt`, otherwise other packages will fail to install (or download older versions).

TensorFlow just went with the option of using a [different package](https://pypi.org/project/tf-nightly) for nightly builds, another option.

## Tests

### Setup

Several versions of [testpypisk](https://test.pypi.org/project/testpypisk/) published:

```
make pubv VERSION=1.0.0
make pubv VERSION=1.0.0.dev1
make pubv VERSION=1.0.0.dev2
make pubv VERSION=1.0.0.dev10
make pubv VERSION=1.0.1
make pubv VERSION=9999.0.0.dev2
make pubv VERSION=9999.0.0.dev10
```

### Latest stable

```
$ pip install --index-url https://test.pypi.org/simple/ testpypisk
Successfully installed testpypisk-1.0.1
```

## Latest pre

```
$ pip install --index-url https://test.pypi.org/simple/ --pre testpypisk
Successfully installed testpypisk-9999.0.0.dev10
```

## Stable upgrade

```
$ pip install --index-url https://test.pypi.org/simple/ testpypisk==1.0.0
Successfully installed testpypisk-1.0.0

$ pip install --index-url https://test.pypi.org/simple/ --upgrade testpypisk
Successfully installed testpypisk-1.0.1
```

## Pre upgrade

```
$ pip install --index-url https://test.pypi.org/simple/ testpypisk==1.0.0.dev1
Successfully installed testpypisk-1.0.0.dev1

$ pip install --index-url https://test.pypi.org/simple/ --upgrade testpypisk
Successfully installed testpypisk-1.0.1

$ pip install --index-url https://test.pypi.org/simple/ --upgrade --pre testpypisk
Successfully installed testpypisk-9999.0.0.dev10
```
