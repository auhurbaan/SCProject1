#1/bin/bash

cd /tmp
rm *
cd /var/tmp
rm *
apt clean
cd ~/.cache/thumbnails
rm -r *

