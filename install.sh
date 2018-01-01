
sudo apt-get update

sudo apt-get install openjdk-8-jdk git python-dev python3-dev python-numpy python3-numpy python-six python3-six build-essential python-pip python3-pip python-virtualenv swig python-wheel python3-wheel libcurl3-dev libcupti-dev -y

export LD_LIBRARY_PATH=”$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64/”

wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run

sudo sh cuda_8.0.61_375.26_linux-run --override --silent --toolkit

sudo apt-get install nvidia-cuda-dev -y


# install cuDNN v6.0
CUDNN_TAR_FILE="cudnn-8.0-linux-x64-v6.0.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/${CUDNN_TAR_FILE}
tar -xzvf ${CUDNN_TAR_FILE}
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-8.0/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*



git clone https://github.com/pippy360/workingFromDepthRepo.git
cd workingFromDepthRepo
sudo pip install tensorflow-1.4.0rc1-cp27-cp27mu-linux_x86_64.whl

# install cuDNN v6.0
CUDNN_TAR_FILE="cudnn-8.0-linux-x64-v6.0.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/${CUDNN_TAR_FILE}
tar -xzvf ${CUDNN_TAR_FILE}
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-8.0/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*


export LD_LIBRARY_PATH=”$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64/”


sudo pip install pillow
