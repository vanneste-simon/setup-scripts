#!/bin/bash

sudo chmod u+x *.sh

sh ./1_setup_env.sh

sh ./2_setup_python.sh

sh ./3_install_programs.sh

sh ./4_install_gnome_extensions.sh

exec "$BASH"

echo "done all"
