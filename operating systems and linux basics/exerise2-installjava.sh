#! /bin/bash

apt update
apt install -y default-jre

java_version=$(java --version 2>&1 | awk -F\" "/version/ {print $2}" | cut -d. -f1 )

if [ "$java_version" == "" ]
then
  echo "Unsuccessful installation"
elif [ "$java_version" -ge 11 ]
then 
  echo "Java version greater than equal to 11 successful"
else
  echo wrong java version
fi
