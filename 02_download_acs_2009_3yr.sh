#!/bin/bash

# Make a data directory in ephemeral stoage
sudo mkdir -p /acs/tmp
sudo chown hermes /acs/tmp

# Grab the 2009 ACS 3 year
cd /acs/tmp
mkdir -p acs2009_3yr
cd acs2009_3yr
sudo apt-get -y install unzip
aria2c --dir=/acs/tmp/acs2009_3yr --max-connection-per-server=5 --force-sequential=true \
    "http://www2.census.gov/acs2009_3yr/summaryfile/2007-2009_ACSSF_All_In_1_Giant_File(Experienced-Users-Only)/All_Geographies.zip" \
    "http://www2.census.gov/acs2009_3yr/summaryfile/UserTools/Sequence_Number_and_Table_Number_Lookup.txt"
unzip -q All_Geographies.zip
