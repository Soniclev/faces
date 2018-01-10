mkdir -p Programs
cd Programs
wget -O "opencv.zip" "https://github.com/Itseez/opencv/archive/2.4.11.zip" 
unzip opencv.zip
git clone https://github.com/opencv/opencv.git
sudo apt-get install build-essential cmake git libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libc6-dev g++ libopencv-dev -y
cd opencv
mkdir -p release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -DENABLE_PRECOMPILED_HEADERS=OFF -D WITH_FFMPEG=OFF ..
make
sudo make install