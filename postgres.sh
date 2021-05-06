#!/bin/sh
# run postgres instance with password = password

docker run -e POSTGRES_PASSWORD=password -t postgres