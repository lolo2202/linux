wget -c https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo bash ./Miniconda3-latest-Linux-x86_64.sh -b -f -p /ap/users/eltonz/miniconda3
sudo chown -R eltonz:eltonz /ap/users/eltonz/miniconda3/
/ap/users/eltonz/miniconda3/bin/python -m conda init
