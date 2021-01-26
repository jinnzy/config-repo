存在的问题，拉取插件比较慢，可以使用代理拉取，或者下载到本地进行构建。

bin/docker-entrypoint.sh 这个文件可能会更新，具体可以参考https://github.com/elastic/dockerfiles/blob/7.10/elasticsearch/bin/docker-entrypoint.sh这个地址，我在这个docker-entrypoint.sh中添加了一些插件使用的变量