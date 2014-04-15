#!/bin/bash

rm _site/ -rf
jekyll build
cp _site/ /media/exchange/ -rf
rm _site/ -rf
