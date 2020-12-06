has_cmd "sudo"
has_cmd "wget"
has_cmd "unzip"
has_cmd "gcc"
has_cmd "make"

wget https://github.com/RinCat/RTL88x2BU-Linux-Driver/archive/master.zip
unzip master.zip
cd RTL88x2BU-Linux-Driver-master
make -j $(nproc)
sudo make install
sudo modprobe 88x2bu


function has_cmd {
    if [[ ! "$(command -v ${1})" ]]
    then
        exit 1
    fi
}
