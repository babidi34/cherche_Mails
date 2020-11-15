#! bin/bash

cat Download.CSV | awk -F , '{ for (i = 1; i <= NF; ++i) if($i ~ "@")print $i}' >> result
sed -ie 's/"//g' result
