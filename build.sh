#!/bin/bash

rm _site/ -rf
jekyll build
mount -t vboxsf exchange /media/exchange
cp _site/ /media/exchange/ -rf
rm _site/ -rf
