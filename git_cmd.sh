#!/bin/bash

case $1 in
    status|pull|difftool)
        echo executing supported cmd:
        ;;
    *)
        echo unsupported command: $1
        ;;
esac

git $@
ls -laF branches | tail -n +4 | awk '{print $NF}' | xargs -I x -n1 git -C branches/x $@
#| awk '{print $NF}'
