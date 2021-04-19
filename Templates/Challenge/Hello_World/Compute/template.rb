#!/usr/bin/ruby

#
# See ../README.md
#
 
#
# Run as: ruby ch-1.rb [plain | compute]
#

PLAIN   =  0
COMPUTE =  1

type = PLAIN

if   ARGV . length > 0 && ARGV[0] == "compute"
then type = COMPUTE
end

if   type == PLAIN
then puts ("%TEXT");
end

if   type == COMPUTE
then
end
