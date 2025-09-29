#! /bin/bash
read -p "Please specify sort by memory or CPU (m/c): " sort_by
read -p "Please specify how many lines to pring: " lines_to_print

if [ "$sort_by" == "m" ]
then
  column_number=4
elif [ "$sort_by" == "c" ]
then 
  column_number=3
else
  echo "no input detected"
fi

ps aux | sort -k $column_number -nr | head -n $lines_to_print



