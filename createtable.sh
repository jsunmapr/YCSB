#!/bin/bash
source `dirname $0`/env_vars.sh

#java -cp $CP com.yahoo.ycsb.db.HbaseCreateTable 1000

hbase shell << EOF
create '/tables/usertable', 'family'
disable '/tables/usertable'
#alter 'usertable', {NAME => 'family', VERSIONS => '1', COMPRESSION =>'gz'}
alter '/tables/usertable', {NAME => 'family', VERSIONS => '1'}
enable '/tables/usertable'
describe '/tables/usertable'
exit
EOF

