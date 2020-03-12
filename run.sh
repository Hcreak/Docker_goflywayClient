#!/bin/bash

/usr/sbin/rinetd -c /goflyway/rinetd.conf
./goflyway -up="" -k="" -l="0.0.0.0:1081" -web-port="1090"