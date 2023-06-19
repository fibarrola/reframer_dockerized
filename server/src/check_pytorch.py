import torch
import torchvision

print(torch.cuda.is_available())
print(torch.__version__)
print(torchvision.__version__)

import subprocess


CUDA_version = [
    s
    for s in subprocess.check_output(["nvcc", "--version"]).decode("UTF-8").split(", ")
    if s.startswith("release")
][0].split(" ")[-1]
print("CUDA version:", CUDA_version)
