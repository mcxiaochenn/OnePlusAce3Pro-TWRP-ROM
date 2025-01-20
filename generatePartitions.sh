#!/bin/bash
parts="
my_product
my_engineering
my_company
my_carrier
my_region
my_heytap
my_stock
my_preload
my_bigball
my_manifest
odm
product
system
system_ext
vendor
vendor_dlkm
system_dlkm"

a=""
for i in $(echo $parts); do
    if [[ -f "$i.img" ]]; then
        a+=" $i"
    fi
done

sed -i "5i\super_qti_dynamic_partitions_partition_list=$a" "META/dynamic_partitions_info.txt"

sed -i 's/super_qti_dynamic_partitions_partition_list= /super_qti_dynamic_partitions_partition_list=/g' "META/dynamic_partitions_info.txt"