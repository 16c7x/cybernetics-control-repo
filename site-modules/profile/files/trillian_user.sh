#!/bin/bash

sudo groupadd earth

sudo useradd -m -d /home/trillian -c "Tricia McMillan" -G earth trillain
sudo chown trillain:earth /home/trillian
sudo chmod 640 /home/trillian

echo "User 'trillain' created successfully."