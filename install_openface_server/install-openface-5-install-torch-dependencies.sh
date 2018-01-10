mkdir -p Programs
cd Programs
for NAME in dpnn nn optim optnet csvigo; do luarocks install $NAME; done