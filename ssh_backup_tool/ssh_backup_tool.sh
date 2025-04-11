#!/bin/bash
SRC="/home/$USER/Documents"
DEST="user@remote:/backup"
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa <<< y
ssh-copy-id $DEST
rsync -avz --delete $SRC $DEST