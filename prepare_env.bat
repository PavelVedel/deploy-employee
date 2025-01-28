@echo off

REM Upgrade pip to the latest version
python -m pip install --upgrade pip
pip install --upgrade setuptools==69.5.1 wheel


REM Install PyTorch with CUDA 11.8 support
pip install --upgrade torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

REM Install Hugging Face Transformers and other necessary libraries
@REM https://github.com/OpenBMB/MiniCPM-o/issues/722
pip install --upgrade transformers==4.44.2 accelerate

@REM Install toolkit from here: https://developer.nvidia.com/cuda-toolkit-archive for coresponded CUDA version 
@REM For example PyTorch version: 2.6.0+cu118 means CUDA 11.8
@REM Then download and isntall special VS2022 - VisualStudioSetup.exe
@REM In cmd run .\VisualStudioSetup.exe --channelUri https://aka.ms/vs/17/release.LTSC.17.8/channel
@REM Desktop development with C++.
@REM Вкладка "Individual Components" → выберите:
@REM    MSVC v143 - VS 2022 C++ x64/x86 build tools.
@REM    Windows 10 SDK (должен быть >=10.0.19041).
@REM    C++ CMake tools for Windows.
@REM    C++ Clang tools for Windows (по желанию, если есть Clang).
@REM    Ninja Build System (для более быстрой сборки).
@REM Choose special Visual Studio Build Tools in components 
@REM Then this
pip install ninja
pip install cmake

pip install flash_attn --no-cache-dir --force-reinstall


REM Verify installation and check if CUDA is available
python -c "import torch; print('PyTorch version:', torch.__version__); print('CUDA available:', torch.cuda.is_available()); print('Device:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'No CUDA')"
