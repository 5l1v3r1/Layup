#!/usr/bin/env sh
set -e

./build/tools/caffe train \
    --solver=models/resnet/resnet_2501_solver.prototxt $@
