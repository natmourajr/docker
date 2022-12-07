#!/bin/bash

# author: Natanael Moura Junior (natmourajr@lps.ufrj.br)
# Folder Configuration
if [ -d "$NOTEBOOK_PATH" ]; then
    echo "NOTEBOOK_PATH: $NOTEBOOK_PATH exists"
else 
    echo "NOTEBOOK_PATH: $NOTEBOOK_PATH doesnt exist"
    mkdir $WORKSPACE/notebooks
    mkdir $WORKSPACE/data
    mkdir $WORKSPACE/data/indexes
    mkdir $WORKSAPCE/data/models
fi
echo "Setup done!"

