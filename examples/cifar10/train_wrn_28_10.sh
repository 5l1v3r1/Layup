#!/usr/bin/env sh
set -e

TOOLS=./build/tools
GLOG_logtostderr=0 GLOG_log_dir=examples/cifar10/log/ \
$TOOLS/caffe train \
  --solver=models/wrn/wrn_28_10_solver.prototxt $@
