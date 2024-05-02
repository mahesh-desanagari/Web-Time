#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple Interest Formula: SI = (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    
    echo "Simple Interest: $interest"
}

# Main function
main() {
    # Input principal amount
    read -p "Enter principal amount: " principal

    # Input interest rate
    read -p "Enter annual interest rate (in percentage): " rate

    # Input time period in years
    read -p "Enter time period (in years): " time

    # Call function to calculate simple interest
    calculate_simple_interest "$principal" "$rate" "$time"
}

# Call main function
main
