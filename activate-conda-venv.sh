#!/bin/bash zsh

# Get the current folder name.
# This will be used to create the name of the environment.
current_folder_name="${PWD##*/}"

# Deactivate any current conda environments and activate new environment.
conda deactivate && conda activate $current_folder_name
