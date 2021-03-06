include_attribute "kagent"

default['tensorflow']['user']          = node['tensorflow'].attribute?('user') ? node['install']['user'] : node['kagent']['user']
default['tensorflow']['group']         = node['install']['user'].empty? ? node['kagent']['group'] : node['install']['user']

default['tensorflow']['install']       = "dist" # or 'src' or 'custom'

# tensorflow-1.2.1-debian-gcc_version-python_version.whl
# #{node['download_url']}/tensorflow-#{node['tensorflow']['version']}-#{node['platform']}-5.4-2.7.whl"
default['tensorflow']['custom_url']    = ""

default['tensorflow']['git_url']       = "https://github.com/tensorflow/tensorflow"

#
# TensorFlow/PyTorch example notebooks and datasets
#
default['tensorflow']['hopstf_version'] = '0.0.1'
default['tensorflow']['hopstf_url']    = "#{node['download_url']}/tensorflow/hops-tensorflow-#{node['tensorflow']['hopstf_version']}.jar"
default['tensorflow']['examples_version']  = node['install']['version']
default['tensorflow']['hopstfdemo_dir'] = "tensorflow_demo"
default['tensorflow']['hopstfdemo_url'] = "#{node['download_url']}/tensorflow/#{node['tensorflow']['examples_version']}/demo.tar.gz"

#
# Base directories
#
default['tensorflow']['dir']           = node['install']['dir'].empty? ? "/srv/hops" : node['install']['dir']
default['tensorflow']['home']          = node['tensorflow']['dir'] + "/tensorflow-" + node['tensorflow']['version']
default['tensorflow']['base_dir']      = node['tensorflow']['dir'] + "/tensorflow"


#default['cuda']['major_version']       = "9.1"
#default['cuda']['minor_version']       = "85"
#default['cuda']['build_version']       = "387.26"
default['cuda']['major_version']       = "9.0"
default['cuda']['minor_version']       = "176"
default['cuda']['build_version']       = "384.81"
default['cuda']['version']             = node['cuda']['major_version'] + "." + node['cuda']['minor_version'] + "_" + node['cuda']['build_version']
default['cuda']['url']                 = "#{node['download_url']}/cuda_#{node['cuda']['version']}_linux.run"
#default['cuda']['url_backup']          = "http://developer.download.nvidia.com/compute/cuda/#{node['cuda']['major_version']}/Prod/local_installers/cuda_#{node['cuda']['version']}_linux.run"
default['cuda']['driver_version']      = "NVIDIA-Linux-x86_64-390.59.run"
default['cuda']['driver_url']          = "#{node['download_url']}/#{node['cuda']['driver_version']}"
default['cuda']['md5sum']              = ""
# 9.0 checksum
#default['cuda']['md5sum']              = "33e1bd980e91af4e55f3ef835c103f9b"

# cudnn-9.0-linux-x64-v7.1.tar.gz
default['cudnn']['version']            = "7"
default['cudnn']['url']                = "#{node['download_url']}/cudnn-#{node['cuda']['major_version']}-linux-x64-v#{node['cudnn']['version']}.tgz"

# nccl_2.2.13-1+cuda9.0_x86_64.txz
default['cuda']['nccl']                = "2.2.13-1"
default['cuda']['nccl_version']        = "nccl_" + node['cuda']['nccl'] + "+cuda" + node['cuda']['major_version'] + "_x86_64"

# TensorRT - Nvidia (ubuntu only)
# TensorRT-3.0.4.Ubuntu-16.04.3.x86_64.cuda-9.0.cudnn7.0.tar.gz
default['cuda']['tensorrt']            = "3.0.4"
default['cuda']['tensorrt_version']    = "TensorRT-" + node['cuda']['tensorrt'] + ".Ubuntu-16.04.3.x86_64-gnu.cuda-"
                                          + node['cuda']['major_version'] + ".cudnn" + "7.0" + ".tar.gz"

default['cuda']['dir']                 = "/usr/local"
default['cuda']['base_dir']            = "#{node['cuda']['dir']}/cuda"
default['cuda']['version_dir']         = "#{node['cuda']['dir']}/cuda-#{node['cuda']['major_version']}"
default['cuda']['num_patches']         = 2

default['cuda']['accept_nvidia_download_terms']        = "false"
default['cuda']['skip_test']           = "false"
default['cuda']['skip_stop_xserver']   = "false"
default['tensorflow']['mkl']           = "false"
default['tensorflow']['mpi']           = "false"
default['tensorflow']['rdma']          = "false"
default['tensorflow']['tensorrt']      = "false"


default['tensorflow']['need_cuda']     = 0
default['tensorflow']['need_mpi']      = 0
default['tensorflow']['need_mkl']      = 0
default['tensorflow']['need_rdma']     = 0
default['tensorflow']['need_tensorrt'] = 0

# https://github.com/bazelbuild/bazel/releases/download/0.5.2/bazel-0.5.2-installer-linux-x86_64.sh
default['bazel']['major_version']      = "0.11"
default['bazel']['minor_version']      = "1"
default['bazel']['version']            = node['bazel']['major_version'] + "." + node['bazel']['minor_version']
default['bazel']['url']                = "#{node['download_url']}/bazel-#{node['bazel']['version']}-installer-linux-x86_64.sh"

default['tensorflow']['serving']['version']      = "1.8.0"

default['openmpi']['version']          = "openmpi-3.1.0.tar.gz"

