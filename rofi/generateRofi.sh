#!/bin/bash

# grab the purest color definition file
input="$HOME/.cache/wal/colors"
i=0
content=""
while IFS= read -r line
do

    # generate the color list for my style config
    if [ $i -eq 0 ]; then 
        content="${content}  background:${line}ff;"
        content="${content}  color$i:${line};"
    else 
        content="${content}  color$i:${line};"
    fi

    i=$((i+1))

done < "$input"

cat "$content"

# copied a template config to the actual config location
cp $HOME/.config/i3/template.rasi $HOME/.config/i3/rofi.rasi

# write in the 10th line my color list
sed -i "10i$content" $HOME/.config/i3/rofi.rasi