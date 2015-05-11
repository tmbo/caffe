#!/bin/sh

#../../build/tools/caffe train -solver solver.prototxt 2> out
../../build/tools/caffe train -solver solver.prototxt 2>&1 | less

