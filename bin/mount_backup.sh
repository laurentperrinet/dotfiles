#!/bin/bash
mkdir -p ~/backup
sshfs -p2225 admin@truc.hd.free.fr:/share/backup/ ~/backup
