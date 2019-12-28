#!/bin/bash

cd /mnt/

R -e 'devtools::build_site()'

echo "\nCheck index.html in docs folder"
