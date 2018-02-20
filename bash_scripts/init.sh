#!/usr/bin/env bash
#
# This is a Docker Anti-Pattern.  I am putting all the services into
# one container and I am doing it knowing that this is NOT the way
# you should do it.   That is just how I roll...
#
# Breaking the law, breaking the law ...
#
# This is intended for development but also allows less experienced
# system operators to deploy to system like QNAP NAS server as one
# container, without having to understand how to connect and
# maintain separate services.
#

mysqld_safe &
MYSQL_PID=$!

apachectl -DFOREGROUND &
APACHE_PID=$!

/usr/sbin/cron -f &
CRON_PID=$!

# A Hack to set the root password for MariaDb/MySQL
if [ -z "$MY_ROOT_PW" ]; then
    echo "Setting MySQL Password";
    sleep 2
    echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MY_ROOT_PW');" | mysql -pnaked
    unset MY_ROOT_PW
fi

echo "**************************************************"
echo "* LAMP Server is ready "
echo "* Server IP address is $(hostname -i) "
echo "**************************************************"
echo $@

if [ $@ = "bash" ]; then
    exec bash
fi

while /bin/true; do

  if ! ps -p $MYSQL_PID > /dev/null
  then
    echo "MySQL died!!!"
    exit -1
  fi

  if ! ps -p $APACHE_PID > /dev/null
  then
    echo "Apache died!!!"
    exit -1
  fi

  if ! ps -p $CRON_PID > /dev/null
  then
    echo "Cron died!!!"
    exit -1
  fi

  sleep 5
done
