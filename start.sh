#!/usr/bin/env bash

service nginx start

npm start 3000 node1 &
echo "node 1 started"
npm start 3001 node2 &
echo "node 2 started"
npm start 3002 node3 &
echo "node 3 started"
npm start 3003 node4
echo "node 4 started"
