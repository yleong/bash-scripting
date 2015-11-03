#!/bin/sh

echo "You entered $# arguments. The script is called $(basename $0)"

if [ $# -gt 0 ]; then # $# is argc
   for i in $@ # $@ is argv
   do
      echo "got argument: $i"
   done
fi

echo "The date and time is $(date)\n"
echo "The logged in users are: \n$(who)\n"
echo "The uptime is : $(uptime)\n"

exit 0
