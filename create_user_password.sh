#!/bin/bash
  
read -p "Enter username: " username

echo "you entered $username"

sudo useradd -m $username

echo "New User added"

sudo passwd $username

echo "Password added"