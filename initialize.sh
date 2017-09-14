#!/bin/bash

cat repos | awk '{print "git -C branches clone " $1}' | bash

