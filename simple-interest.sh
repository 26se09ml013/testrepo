#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

interest=$(awk "BEGIN {printf "%.2f", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf "%.2f", $principal + $interest}")

echo ""
echo "Simple Interest: $interest"
echo "Total Amount: $total"
