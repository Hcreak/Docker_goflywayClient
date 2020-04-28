# Docker_goflywayClient
用于在内网部署的goflyway客户端容器

* 用于 x86 64bit Linux
* 基于 goflyway 2.0.0rc1 使用 rinetd 转发Web console
* 由于golang.org被墙 无法通过源码构建goflyway 这里直接使用releases包

* 在PC和手机上设置HTTP代理指向容器所在设备的1081端口
* 访问Webconsole位于容器所在设备的1091端口

* **2020.3 Fix**  创建容器时通过环境变量$UP和$KEY指定参数
* **2020.4 Fix**  修改使用WebSocket模式（抓包发现默认的HTTP效率太低）

## build and run:
    //2020.3 Fix
    docker build -t goflyway_client .
    docker run -d --network=host -e UP='' -e KEY='' --name mygoflyway goflyway

## Thanks:
  [github.com/coyove/goflyway](https://github.com/coyove/goflyway)

  [github.com/boutell/rinetd](https://github.com/boutell/rinetd)