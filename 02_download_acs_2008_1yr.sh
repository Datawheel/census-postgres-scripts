#!/bin/bash

# Make a data directory in ephemeral stoage
sudo mkdir -p /acs/tmp
sudo chown hermes /acs/tmp

# Grab the 2008 ACS 1 year
cd /acs/tmp
mkdir -p acs2008_1yr
cd acs2008_1yr
sudo apt-get -y install aria2 unzip
aria2c --dir=/acs/tmp/acs2008_1yr --max-connection-per-server=5 \
    "http://www2.census.gov/acs2008_1yr/summaryfile/all_ACSSF.zip"
unzip -q all_ACSSF.zip

rm all_ACSSF.zip
for i in prt03/prod/sumfile/data/2008/**/20081*.zip; do unzip -qn $i; done

# The lookup tables are in XLS only, so they'll be provided in the census-postgres
# package later.
