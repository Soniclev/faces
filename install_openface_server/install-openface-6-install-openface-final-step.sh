mkdir -p Programs
cd Programs
git clone https://github.com/cmusatyalab/openface.git ./openface --recursive
cd ./openface
find . -name "openface_server.lua" -exec sed -i "s/net = torch.load(opt.model)/net = torch.load(opt.model, \'b64\')"/g {} \;
find . -name "align_dlib.py" -exec sed -i "s/return self.detector(rgbImg, 1)/return self.detector(rgbImg, 0)"/g {} \;
sudo python2 setup.py install
bash models/get-models.sh