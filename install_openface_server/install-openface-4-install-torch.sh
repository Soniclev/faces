mkdir -p Programs
cd Programs
git clone https://github.com/torch/distro.git ./torch --recursive
cd ./torch;
sudo bash install-deps;
sudo ./install.sh