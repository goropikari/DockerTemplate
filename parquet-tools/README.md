https://github.com/apache/parquet-mr/tree/master/parquet-tools

```bash
docker build -t parquet-tools .
docker run -d --rm --name parquet-tools parquet-tools sleep 100
docker cp parquet-tools:/root/parquet-mr/parquet-tools/target/parquet-tools-1.11.0.jar .
```
