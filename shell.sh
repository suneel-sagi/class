#!/bin/bash
docker --version
if $? == 0;
then
echo "docker installed"
else
echo "please install docker first..."
fi