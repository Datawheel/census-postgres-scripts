#!/bin/bash

# Make a data directory in ephemeral stoage
sudo mkdir -p /acs/tmp
sudo chown hermes /acs/tmp

# Grab the 2013 ACS 5 year
cd /acs/tmp
mkdir -p acs2013_5yr
cd acs2013_5yr
sudo apt-get -y install aria2 unzip
aria2c --dir=/acs/tmp/acs2013_5yr --max-connection-per-server=5 --force-sequential=true --file-allocation=none \
    "http://www2.census.gov/acs2013_5yr/summaryfile/2009-2013_ACSSF_All_In_2_Giant_Files(Experienced-Users-Only)/All_Geographies_Not_Tracts_Block_Groups.tar.gz" \
    "http://www2.census.gov/acs2013_5yr/summaryfile/2009-2013_ACSSF_All_In_2_Giant_Files(Experienced-Users-Only)/Tracts_Block_Groups_Only.tar.gz" \
    "http://www2.census.gov/acs2013_5yr/summaryfile/2009-2013_ACSSF_All_In_2_Giant_Files(Experienced-Users-Only)/2013_ACS_Geography_Files.zip" \
    "http://www2.census.gov/acs2013_5yr/summaryfile/Sequence_Number_and_Table_Number_Lookup.txt"
tar -xzf All_Geographies_Not_Tracts_Block_Groups.tar.gz
tar -xzf Tracts_Block_Groups_Only.tar.gz
unzip -q 2013_ACS_Geography_Files.zip

mv /acs/tmp/acs2013_5yr/tab4/sumfile/prod/2009thru2013/geo /acs/tmp/acs2013_5yr/geog

# Let the Postgres user access this data
chmod 777 /acs/tmp/acs2013_5yr/geog /acs/tmp/acs2013_5yr/group1 /acs/tmp/acs2013_5yr/group2
chmod 644 /acs/tmp/acs2013_5yr/geog/* /acs/tmp/acs2013_5yr/group1/* /acs/tmp/acs2013_5yr/group2/*
