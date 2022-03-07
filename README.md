# truffle-init-example
This repo is an example of the files that `truffle init` produces for you. So that you don't need truffle installed locally.


## Steps to recreate

``` bash
$ docker build -t tie .
$ docker run -v $PWD:/home/app tie truffle init
```
