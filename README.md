# Docker_goflywayClient
用于在内网部署的goflyway客户端容器

* 用于 x86 64bit Linux
* 基于 goflyway 2.0.0rc1 使用 rinetd 转发Web console
* 由于golang.org被墙 无法通过源码构建goflyway 这里直接使用releases包

* 在PC和手机上设置HTTP代理指向容器所在设备的1081端口
* 访问Webconsole位于容器所在设备的1091端口

## build and run:
    //download and edit run.sh 
	docker build -t goflyway .
	//docker run -d -p 0.0.0.0:1081:1081 -p 0.0.0.0:1091:1091 --name mygoflyway goflyway
    docker run -d --network=host --name mygoflyway goflyway

## Thanks:
  github.com/coyove/goflyway
  github.com/boutell/rinetd