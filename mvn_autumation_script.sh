#!/bin/bash

# Run Maven clean command
echo "Cleaning the project..."
mvn clean

# Run Maven compile command
echo "Compiling the project..."
mvn compile

# Run Maven validate command
echo "Validating the project..."
mvn validate

# Run Maven install command
echo "Installing the project..."
mvn install

# Run Maven package command
echo "Packaging the project..."
mvn package

cmd /k