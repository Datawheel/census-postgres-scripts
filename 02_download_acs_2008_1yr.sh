#!/bin/bash

# Make a data directory in ephemeral stoage
sudo mkdir -p /acs/tmp
sudo chown hermes /acs/tmp

# Grab the 2008 ACS 1 year
cd /acs/tmp
mkdir -p acs2008_1yr
cd acs2008_1yr
sudo apt-get -y install aria2 unzip
aria2c --dir=/acs/tmp/acs2008_1yr --max-connection-per-server=5 --force-sequential=true \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Alabama/all_al.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Alaska/all_ak.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Arizona/all_az.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Arkansas/all_ar.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/California/all_ca.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Colorado/all_co.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Connecticut/all_ct.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Delaware/all_de.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/DistrictofColumbia/all_dc.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Florida/all_fl.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Georgia/all_ga.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Hawaii/all_hi.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Idaho/all_id.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Illinois/all_il.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Indiana/all_in.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Iowa/all_ia.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Kansas/all_ks.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Kentucky/all_ky.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Louisiana/all_la.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Maine/all_me.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Maryland/all_md.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Massachusetts/all_ma.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Michigan/all_mi.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Minnesota/all_mn.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Mississippi/all_ms.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Missouri/all_mo.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Montana/all_mt.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Nebraska/all_ne.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Nevada/all_nv.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NewHampshire/all_nh.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NewJersey/all_nj.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NewMexico/all_nm.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NewYork/all_ny.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NorthCarolina/all_nc.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/NorthDakota/all_nd.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Ohio/all_oh.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Oklahoma/all_ok.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Oregon/all_or.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Pennsylvania/all_pa.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/PuertoRico/all_pr.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/RhodeIsland/all_ri.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/SouthCarolina/all_sc.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/SouthDakota/all_sd.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Tennessee/all_tn.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Texas/all_tx.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/UnitedStates/all_us.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Utah/all_ut.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Vermont/all_vt.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Virginia/all_va.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Washington/all_wa.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/WestVirginia/all_wv.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Wisconsin/all_wi.zip" \
    "http://www2.census.gov/acs2008_1yr/summaryfile/Wyoming/all_wy.zip" \
unzip -q all_al.zip
rm all_al.zip
unzip -q all_ak.zip
rm all_ak.zip
unzip -q all_az.zip
rm all_az.zip
unzip -q all_ar.zip
rm all_ar.zip
unzip -q all_ca.zip
rm all_ca.zip
unzip -q all_co.zip
rm all_co.zip
unzip -q all_ct.zip
rm all_ct.zip
unzip -q all_de.zip
rm all_de.zip
unzip -q all_dc.zip
rm all_dc.zip
unzip -q all_fl.zip
rm all_fl.zip
unzip -q all_ga.zip
rm all_ga.zip
unzip -q all_hi.zip
rm all_hi.zip
unzip -q all_id.zip
rm all_id.zip
unzip -q all_il.zip
rm all_il.zip
unzip -q all_in.zip
rm all_in.zip
unzip -q all_ia.zip
rm all_ia.zip
unzip -q all_ks.zip
rm all_ks.zip
unzip -q all_ky.zip
rm all_ky.zip
unzip -q all_la.zip
rm all_la.zip
unzip -q all_me.zip
rm all_me.zip
unzip -q all_md.zip
rm all_md.zip
unzip -q all_ma.zip
rm all_ma.zip
unzip -q all_mi.zip
rm all_mi.zip
unzip -q all_mn.zip
rm all_mn.zip
unzip -q all_ms.zip
rm all_ms.zip
unzip -q all_mo.zip
rm all_mo.zip
unzip -q all_mt.zip
rm all_mt.zip
unzip -q all_ne.zip
rm all_ne.zip
unzip -q all_nv.zip
rm all_nv.zip
unzip -q all_nh.zip
rm all_nh.zip
unzip -q all_nj.zip
rm all_nj.zip
unzip -q all_nm.zip
rm all_nm.zip
unzip -q all_ny.zip
rm all_ny.zip
unzip -q all_nc.zip
rm all_nc.zip
unzip -q all_nd.zip
rm all_nd.zip
unzip -q all_oh.zip
rm all_oh.zip
unzip -q all_ok.zip
rm all_ok.zip
unzip -q all_or.zip
rm all_or.zip
unzip -q all_pa.zip
rm all_pa.zip
unzip -q all_pr.zip
rm all_pr.zip
unzip -q all_ri.zip
rm all_ri.zip
unzip -q all_sc.zip
rm all_sc.zip
unzip -q all_sd.zip
rm all_sd.zip
unzip -q all_tn.zip
rm all_tn.zip
unzip -q all_tx.zip
rm all_tx.zip
unzip -q all_us.zip
rm all_us.zip
unzip -q all_ut.zip
rm all_ut.zip
unzip -q all_vt.zip
rm all_vt.zip
unzip -q all_va.zip
rm all_va.zip
unzip -q all_wa.zip
rm all_wa.zip
unzip -q all_wv.zip
rm all_wv.zip
unzip -q all_wi.zip
rm all_wi.zip
unzip -q all_wy.zip
rm all_wy.zip

