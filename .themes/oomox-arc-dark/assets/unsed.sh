#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#1d212a/g' \
         -e 's/rgb(100%,100%,100%)/#d3dae3/g' \
    -e 's/rgb(50%,0%,0%)/#1d212a/g' \
     -e 's/rgb(0%,50%,0%)/#709cbb/g' \
 -e 's/rgb(0%,50.196078%,0%)/#709cbb/g' \
     -e 's/rgb(50%,0%,50%)/#1d212a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#1d212a/g' \
     -e 's/rgb(0%,0%,50%)/#d3dae3/g' \
	"$@"
