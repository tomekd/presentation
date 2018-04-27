#!/bin/sh

for file in train-images-idx3-ubyte train-labels-idx1-ubyte t10k-images-idx3-ubyte t10k-labels-idx1-ubyte; do
    wget -O- http://yann.lecun.com/exdb/mnist/$file.gz | gzip -dc > $file
done
