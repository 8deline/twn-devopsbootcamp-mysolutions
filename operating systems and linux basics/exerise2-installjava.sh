#! /bin/bash

apt update
apt install default-jre

java_version=$(java --version 2>&1 | grep "java version\|openjdk version" | awk '{print substr($3, 1, 2)}' )

if ["$java_version" == ""]
then
  echo "Unsuccessful installation"
elif [$java_version -ge 11 ]
then 
  echo "Java version greater than equal to 11 successful"
else
  echo "failed to download correct java version"

fi
