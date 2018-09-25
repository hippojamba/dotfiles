#!/bin/bash
echo "GO installation script running..."
echo "Getting the latest packages..."
apt-get update
apt-get -y upgrade

# New version might be avaiable, check https://golang.org/dl/
echo "Downloading package..."
wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz

echo "Extracting package..."
tar -xvf go1.11.linux-amd64.tar.gz

echo "Moving folder to /usr/local..."
mv go /usr/local

echo "Finished installing GO!"
