#!/usr/bin/env bash

source=$1

sed -r 's/^# /h1. /g' $source |
sed -r 's/^## /h2. /g' |
sed -r 's/^### /h3. /g' |
sed -r 's/^#### /h4. /g' |
sed -r 's/^##### /h5. /g' |
sed -r 's/^###### /h6. /g' |
sed -r 's/^[0-9]+. / # /g' |
sed -r 's/^    [0-9]+. / ## /g' |
sed -r 's/^        [0-9]+. / ### /g' |
sed -r 's/^            [0-9]+. / #### /g' |
sed -r 's/^                [0-9]+. / ##### /g' |
sed -r 's/^                    [0-9]+. / ###### /g' |
sed -r 's/^[-\*] / * /g' |
sed -r 's/^    [-\*] / ** /g' |
sed -r 's/^        [-\*] / *** /g' |
sed -r 's/^            [-\*] / **** /g' |
sed -r 's/^                [-\*] / ***** /g' |
sed -r 's/^                    [-\*] / ****** /g' |
sed -r 's/\*\*(.*)\*\*/*\1*/g' |
sed -r 's/`(.*)`/{color:#505f79}{{\1}}{color}/g' |
sed -r 's/\[(.*)\]\((.*)\)/[\1|\2]/g'
