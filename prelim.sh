#!/bin/sh

LOGFILE=prelim.log
echo "You entered $# arguments. The script is called $(basename $0)"

if [ $# -gt 0 ]; then # $# is argc
   for i in $@ # $@ is argv
   do
      echo "got argument: $i"
   done
fi

echo "The date and time is $(date)\n" | tee -a $LOGFILE
echo "The logged in users are: \n$(who)\n" | tee -a $LOGFILE
echo "The uptime is : $(uptime)\n" | tee -a $LOGFILE

exit 0
