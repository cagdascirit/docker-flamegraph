# docker-flamegraph
FlameGraph generator Docker image

##### Sample Usage:
```sh
docker run -d --name flamegraph --link influxdb -v /Users/cagdas/docker_mnt/flamegraph:/data cirit/flamegraph <influxdb_hostname> <influxdb_port> <influxdb_username> <influxdb_password> <influxdb_db_name> <influxdb_tag_mapping> <influxdb_tag_prefix> <data_dump_in_path> <filter_file> <sort_order> <flame_graphs_out_path> <minimum_width>
```
