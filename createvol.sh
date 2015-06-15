maprcli volume remove -name tables
maprcli volume create -type rw -name tables -path /tables -topology /data -replicationtype low_latency -readonly 0 -user mapr:fc
