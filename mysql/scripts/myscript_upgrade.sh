cd $1

if [ `uname -s` = "SunOS" ]; then
    U=`id|sed -e s/uid=//g -e s/\(.*//g`
else
    U=`id -u`
fi

if [ $U = 0 ]; then
   chown -R root .
   chown -R mysql data
   chgrp -R mysql .
   if test -d tmp; then
       chmod 777 tmp
   fi
fi



/Applications/moodle/mysql/scripts/ctl.sh start mysql > /dev/null
sleep 35

