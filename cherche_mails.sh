#! bin/bash

read -p "Entrez le nom du fichier contenant les adresses mails :" fichier
read -p "Entrez le délimiteur (par exemple ',',':', ' ' ...) :" delimiteur

cat $fichier | awk -F $delimiteur '{ for (i = 1; i <= NF; ++i) if($i ~ "@")print $i}' >> result.csv
sed -ie 's/"//g' result.csv
