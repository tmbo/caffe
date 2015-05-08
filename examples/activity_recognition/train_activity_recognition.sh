#!/usr/bin/env bash

GPU_ID=0

WEIGHTS=\
./models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel

DATA_DIR=./examples/activity_recognition/data/
if [ ! -d $DATA_DIR ]; then
    echo "Data directory not found: $DATA_DIR"
    echo "First, download the UFC101 dataset (follow instructions in data/ucf101)"
    exit 1
fi

./build/tools/caffe train \
    -solver ./examples/activity_recognition/activity_recognition_solver.prototxt \
    -weights $WEIGHTS \
    -gpu $GPU_ID
