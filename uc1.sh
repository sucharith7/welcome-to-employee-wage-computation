#!/bin/bash
if [ $(( $RANDOM % 2 )) -eq 0 ]
then
echo "employee present"
else
echo "employee absent"
fi
