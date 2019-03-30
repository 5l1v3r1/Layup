#!/usr/bin/env sh
set -e
GLOG_logtostderr=0 GLOG_log_dir=examples/imagenet/log/ \
./build/tools/caffe train \
    --solver=models/inception-v4/solver.prototxt $@
