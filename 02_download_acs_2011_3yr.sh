#!/bin/bash

# Make a data directory in ephemeral stoage
sudo mkdir -p /acs/tmp
sudo chown hermes /acs/tmp

# Grab the 2011 ACS 3 year
cd /acs/tmp
mkdir -p acs2011_3yr
cd acs2011_3yr
sudo apt-get -y install aria2 unzip
aria2c --dir=/acs/tmp/acs2011_3yr --max-connection-per-server=5 --force-sequential=true \
    "http://www2.census.gov/acs2011_3yr/summaryfile/2009-2011_ACSSF_All_In_1_Giant_File(Experienced-Users-Only)/All_Geographies.zip" \
    "http://www2.census.gov/acs2011_3yr/summaryfile/Sequence_Number_and_Table_Number_Lookup.txt"
unzip -q All_Geographies.zip
