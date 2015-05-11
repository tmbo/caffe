#!/usr/bin/env bash

export CAFFE_ROOT="$HOME/caffe-tmbo"

WEIGHTS=$CAFFE_ROOT/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel

$CAFFE_ROOT/build/tools/caffe train \
    -solver $CAFFE_ROOT/examples/activity_recognition/solver.prototxt \
    -weights $WEIGHTS \
    -gpu 0 2>&1 | less

