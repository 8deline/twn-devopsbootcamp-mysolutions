#! /bin/bash

apt update
apt install -y default-jre

java_version=$(java --version 2>&1 | grep "java version\|openjdk version" | awk '{print substr($3, 2, 2)}' )

if [ "$java_version" == "" ]
then
  echo "Unsuccessful installation"
elif [ "$java_version: == "1." ]
then 
  echo "old java versions"
elif [ "$java_version" -ge 11 ]
then 
  echo "Java version greater than equal to 11 successful"
fi
