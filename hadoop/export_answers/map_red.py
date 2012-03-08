#!/usr/bin/env python

import sys

if len(sys.argv) < 2:
    print "ERROR"
    sys.exit()

deal = sys.argv[1]

if deal == "map":
    for line in sys.stdin:
        for item in line.split():
            print "MAP",item
elif deal == "red":
    for line in sys.stdin:
        for item in line.split():
            print "RED",item
