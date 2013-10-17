#!/bin/bash
source `dirname $0`/basics.lib


function	get_flags()
{
    eval $(echo "$1" | tr -s ' ' | sed 's/\(-\+\)\(\w\+:\?\)/_\2=false;/g')

    eval 'while [ "$2" ];
          do
              if [ "$2" = "--42" ];
              then
                  echo jules@baratoux.fr;
              '$(echo "$1" | sed 's/\(-\+\)\(\w\+:\?\)/elif \[ "\$2" = "\1\2" \]; then _\2=true;/g')'
              fi;
              shift;
          done'
}

get_flags "-a -b -c -dev" "$@"

echo $_a
echo $_b
echo $_c
echo $_dev

# i=0
# echo abc: | sed 's/:/\$x=\$$i; i=$i+1; shift;/g'
