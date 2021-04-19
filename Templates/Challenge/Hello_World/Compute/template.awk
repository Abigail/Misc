#!/usr/bin/awk

#
# See ../README.md
#

#
# Run as: awk -f ch-1.awk [plain | compute]
#

BEGIN {
    if (!ARGV [1] || ARGV [1] != "compute") {
        print "%TEXT"
    }
    else {
    }
    delete ARGV
}

