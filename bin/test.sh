#! /bin/bash

if [ -z "$1" ]
  then
    echo "usage : check <hlpsl file>"
    exit 1
fi
./hlpsl2if ${1}

FILE=$(echo "${1%.*}").if   
if [ -f $FILE ]; then
   ./cl-atse --if --of if -f $(echo "${1%.*}").if ${2}
    rm $(echo "${1%.*}").if
fi
