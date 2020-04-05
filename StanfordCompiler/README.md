# Stanford - Compiler CS143

https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/about

## Setup
```
$ docker build -t stanford_compiler .
$ docker run -it stanford_compiler bash
ubuntu@9d8c9c9a1508:~$ ls
cs143
```

## Execute coolc
```
$ coolc example.cl
$ spim -file example.s
```
