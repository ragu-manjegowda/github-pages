#!/bin/bash

mkdir -p /mnt/docs
cd /mnt/docs/

R -e 'devtools::build_site()'

echo "\nCheck index.html in docs folder"

