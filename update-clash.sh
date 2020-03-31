#! /bin/bash

set -e

case $1 in
webs)
    mkdir -p clash_webs_tmp
    wget https://github.com/Dreamacro/clash-dashboard/archive/gh-pages.zip -O clash_webs_tmp/gh-pages.zip
    unzip clash_webs_tmp/gh-pages.zip -d clash_webs_tmp/
    mv clash_webs_tmp/clash-dashboard-gh-pages clash_webs_tmp/clash_webs
    tar -cvzf clash_webs_tmp/clash_webs.tgz -C clash_webs_tmp clash_webs
    mv clash_webs_tmp/clash_webs.tgz clash_webs.tgz
    rm -rf clash_webs_tmp
    ;;
ipdb)
    #mkdir -p clash_ipdb_tmp
    #wget -O clash_ipdb_tmp/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
    #tar -cvzf clash_ipdb_tmp/Country.mmdb.tgz -C clash_ipdb_tmp Country.mmdb
    #mv clash_ipdb_tmp/Country.mmdb.tgz Country.mmdb.tgz
    #rm -rf clash_ipdb_tmp
    wget -O Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
    ;;
*)
    echo '=================================================='
    echo '              Clash Update Tools'
    echo '--------------------------------------------------'
    echo 'Usage: update-clash [option]'
    echo ''
    echo "webs"
    echo "ipdb"
    echo '=================================================='
    ;;
esac

