#!/bin/bash

# This script takes a single argument (a temperature in Fahrenheit) and ouputs
# the equivalent temperature in Celcius.

# assign the passed in argument to the variable tempF
tempF=$1

# convert from F to C
tempC=$(echo "scale=4;($tempF-32)*(5/9)" | bc)
tempK=$(echo "scale=4;($tempC+273)" | bc)

# output the temperature conversion to the terminal
echo "$tempF F = $tempC C = $tempK K"
