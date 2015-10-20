# docker-flamegraph
FlameGraph generator Docker image

##### Sample Usage:
```sh
docker run -d --name flamegraph --link influxdb -v /Users/cagdas/docker_mnt/flamegraph:/data cirit/flamegraph <influxdb_hostname> <influxdb_port> <influxdb_username> <influxdb_password> <influxdb_db_name> <influxdb_tag_mapping> <influxdb_tag_prefix> <data_dump_in_path> <filter_file> <sort_order> <start_date> <end_date> <flame_graphs_out_path> <minimum_width>
```

##### like
```sh
docker run -d --name flamegraph --link influxdb -v /Users/cagdas/docker_mnt/flamegraph:/data cirit/flamegraph influxdb 8086 root root jvm username.job.flow.stage.phase cirit.loadtest.X.1.1 /data/in /data/filter.txt 0 2015-08-18T23:00:01Z 2015-08-18T23:15:01Z /data/out 0.05
```
