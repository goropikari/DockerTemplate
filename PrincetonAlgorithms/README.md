# Docker for Coursera course Algorithms by Princeton University

# Information about Algorithms, 4th Edition
- [booksite](https://algs4.cs.princeton.edu/home/)
- [kevin-wayne/algs4](https://github.com/kevin-wayne/algs4)

# Specification
- [Algorithms, Part I | coursera](https://www.coursera.org/learn/algorithms-part1)
  - [Percolation](https://coursera.cs.princeton.edu/algs4/assignments/percolation/specification.php)
  - [Queues](https://coursera.cs.princeton.edu/algs4/assignments/queues/specification.php)
  - [Collinear Points](https://coursera.cs.princeton.edu/algs4/assignments/collinear/specification.php)
  - [Slider Puzzle](https://coursera.cs.princeton.edu/algs4/assignments/8puzzle/specification.php)
  - [KD-Tree](https://coursera.cs.princeton.edu/algs4/assignments/kdtree/specification.php)


# Docker
Tested on ArchLinux (Host OS)

```bash
docker build -t algs4 .

# Test X11 forwarding
$ docker run --rm --net host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/algs4/.Xauthority algs4 test
$ docker run --rm --net host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/algs4/.Xauthority -it algs4
```
or
```bash
docker-compose build
docker-compose run algs4 test # Test X11 forwarding
docker-compose run algs4
```

# Download assignment code
```
$ curl -O "https://coursera.cs.princeton.edu/algs4/assignments/percolation/percolation.zip" && \
$ unzip -d percolation percolation.zip && \
$ rm percolation.zip && \

$ curl -O "https://coursera.cs.princeton.edu/algs4/assignments/queues/queues.zip" && \
$ unzip -d queues queues.zip && \
$ rm queues.zip && \

$ curl -O "https://coursera.cs.princeton.edu/algs4/assignments/collinear/collinear.zip" && \
$ unzip -d collineaor collinear.zip && \
$ rm collinear.zip && \

$ curl -O "https://coursera.cs.princeton.edu/algs4/assignments/8puzzle/8puzzle.zip" && \
$ unzip -d 8puzzle 8puzzle.zip && \
$ rm 8puzzle.zip && \

$ curl -O "https://coursera.cs.princeton.edu/algs4/assignments/kdtree/kdtree.zip" && \
$ unzip -d kdtree kdtree.zip && \
$ rm kdtree.zip
```
