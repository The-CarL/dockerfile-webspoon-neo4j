#! /usr/bin/bash

FILE_BASE=kettle-plugin-examples
rm -rf ${FILE_BASE}

git clone git@github.com:neo4j-examples/kettle-plugin-examples.git ${FILE_BASE} > kettle-plugin-examples-git.log

if [ -f ${FILE_BASE}.zip ]
then
  rm -f ${FILE_BASE}.zip
fi

tar -czvf ${FILE_BASE}.tar.gz kettle-plugin-examples 
echo Added kettle-plugin-examples github project

# Cleanup
rm -rf ${FILE_BASE}

