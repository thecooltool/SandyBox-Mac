#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ../../System/update
python update.py
read -p "Press any key to exit..."