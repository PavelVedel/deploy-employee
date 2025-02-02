import torch

print("PyTorch version:", torch.__version__)
print("CUDA available:", torch.cuda.is_available())
if torch.cuda.is_available():
    print("Device name:", torch.cuda.get_device_name(0))

# PyTorch version: 2.6.0+cu118
# CUDA available: True
# Device name: NVIDIA GeForce RTX 4070 Laptop GPU