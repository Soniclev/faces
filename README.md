This description in [Russian](install_openface_server/README.md)
# How to install openface on Debian 9 32bit?
With these scripts your can quickly install the [openface](https://github.com/cmusatyalab/openface) on Debian 9 32bit with all needed dependencies without "head pain".

# List of patches:

1. Restore model loading on 32bit/x86 system.

was | now | file
--- | --- | ---
`net = torch.load(opt.model)` | `net = torch.load(opt.model, \'b64\')` | openface_server.lua

2. By default, the openface will double size of image when search faces. It is for searching faces with size bigger than 40x40 pixels, because dlib has minimal size - 80x80 pixels. However, faces few than 80x80 pixels are bad for face representating (computing vector with 128 dimension), increase memory usage and time for run. That is why this patch remove this 'hack'.

was | now | file
--- | --- | ---
`return self.detector(rgbImg, 1)` | `return self.detector(rgbImg, 0)` | align_dlib.py
