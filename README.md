docker build --build-arg ALPINE_VERSION=3.14 --build-arg PYTHON_VERSION=3.8 -t my-python-image .


docker build --build-arg ALPINE_VERSION=3.17 --build-arg PYTHON_VERSION=3.10 --build-arg PYTHON_RELEASE=3.10.11 -t my-python-image .

docker build --build-arg ALPINE_VERSION=3.14 --build-arg PYTHON_VERSION=3.9 --build-arg PYTHON_RELEASE=3.9.16 -t my-python-image .

