#!/bin/bash
BASEDIR=$(dirname $0)
mkdir ${8}
python $BASEDIR/influxdb_dump.py -o ${1} -r ${2} -u ${3} -p ${4} -d ${5} -t ${6} -e ${7} -x ${8} -f ${9} -s ${10} -a ${11} -b ${12}

FILES_IN=${8}/*.txt
FILES_OUT=${13}

mkdir $FILES_OUT
for f in $FILES_IN; do
	echo "Processing $f.svg file..."
	file=${f##*/}
	perl $BASEDIR/flamegraph.pl -minwidth ${14} $f > $FILES_OUT/$file.svg
done
