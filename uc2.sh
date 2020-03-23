#!/bin/bash
WAGE=20
hours=8
if [ $(( $RANDOM % 2 )) -eq 0 ]
then
echo "employewage" $(( WAGE * hours ))
else
echo "employee absent"
fi
