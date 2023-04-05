#!/bin/bash

#Explaination of command
# 1) Search file in  / "root" directory
# 2) "-i" means find  either small or capital letter
# 3) "$1" take one  file argument and  "2> /dev/null"  shows us any error message  won't be displayed on the screen.

find / -iname $1 2> /dev/null
