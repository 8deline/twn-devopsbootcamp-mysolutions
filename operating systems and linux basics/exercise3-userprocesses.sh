#! /bin/bash
read -p "Please specify sort by memory or CPU: " sort_by
read -p "Please specify how many lines to pring: " lines_to_print

processes_running=$(ps aux)

column_number=3

if [ "$sort_by" == memory ]
then
  $column_number=4

$processes_running | sort -k $column_number | head $lines_to_print



