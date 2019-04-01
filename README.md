## Layup
### Introduction
Layup provides a memory optimization strategy for CNNs based on BVLC Caffe(https://github.com/BVLC/caffe). It achieves average 66% reduction of runtime memory usage over BVLC Caffe, and can even train ResNet with 2504 layers (batch size = 16) on one K40m GPU (12GB memory).

- We test some benchmark networks (AlexNet, VGG-16, GoogLeNet, ResNet-34, ResNet-50, ResNet-101, DenseNet-121, Inception-V4) with CUDA 7.5 and cuDNN v5.
- If you want to run extreme-deep networks, such as ResNet-1001, please make sure that the node has enough CPU memory. (Our test environment is 256GB)

### Download and Build 
The prerequisites are the same with BVLC Caffe, more details please visit http://caffe.berkeleyvision.org/installation.html.

Run the following command to download and build Layup.

```
// git clone this repository
// then adjust Makefile.config (for example, if using cuDNN, uncomment the USE_CUDNN := 1)

make all -j8
```

### Example
You can use the command line (c++) to run CNN models, the usage is not different from BVLC Caffe.

```
// Take GoogLeNet as an example
// Prepare data and adjust the data source in train_val.prototxt
// Run the following command to train GoogLeNet

./examples/imagenet/train_googlenet.sh --gpu 0
```

### Support Or Contact
If you have any questions, please contact Yang Ma (yangm@hust.edu.cn).
