#!/bin/bash

echo "All variables passed to script: $#"
echo "Number of variables passed:$@"
echo " First variable is:$1"
echo "Script name is: $0"
echo "who is running this: $USER"
echo "Which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
wait $!
echo "Line number: $LINENO"
echo "Script executed in $SECONDS seconds"
echo "Random number: $RANDOM"
