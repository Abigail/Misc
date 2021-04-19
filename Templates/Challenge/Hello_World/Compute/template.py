#!/opt/local/bin/python

#
# See ../README.md
#

#
# Run as: python ch-1.py [plain | compute]
#

import sys

COUNT   = 10
PLAIN   =  0
COMPUTE =  1

type = PLAIN

if len (sys . argv) > 1 and sys . argv [1] == "compute":
    type = COMPUTE


if type == PLAIN:
    print ("%TEXT")


if type == COMPUTE:
    1
