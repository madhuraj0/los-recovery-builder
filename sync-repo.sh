#!/bin/bash

repo init -u git://github.com/LineageOS/android.git -b lineage-20.0
repo sync -j$(nproc --all) --force-sync
