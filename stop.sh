#!/bin/sh

kill -9 `ps -ax | grep CarlaUE4.sh | awk '{print $1}'`
