#!/bin/bash
mkdir -p ~/data_drive
sshfs -p2225 admin@truc.hd.free.fr:/share/data_drive/ ~/data_drive
