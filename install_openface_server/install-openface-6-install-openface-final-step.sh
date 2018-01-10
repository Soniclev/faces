mkdir -p Programs
cd Programs
git clone https://github.com/cmusatyalab/openface.git ./openface --recursive
cd ./openface
sudo python2 setup.py install
bash models/get-models.sh
find . -name "openface_server.lua" -exec sed -i "s/net = torch.load(opt.model)/net = torch.load(opt.model, \'b64\')"/g {} \;