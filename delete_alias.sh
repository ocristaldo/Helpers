#!/bin/bash 

sed -i '/start_/,/end_/d' $HOME/.bashrc
if [ $? -eq 0 ]; then
    echo "done, open a new terminal."
    source $HOME/.bashrc
else
    echo "fail for a unexpected reason"
fi
