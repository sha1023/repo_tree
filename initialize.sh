#!/bin/bash

mkdir -p branches
cat repos | awk '{print "git -C branches clone " $1}' | bash

