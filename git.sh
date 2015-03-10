#!/bin/bash

echo -n "Please input your git username: "
read username
echo -n "Please input your email: "
read email

git config --global user.name "${username}"
git config --global user.email ${email}
