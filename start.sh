#!/usr/bin/env bash

service nginx start

npm start 3000 node1 &
npm start 3001 node2 &
npm start 3002 node3 &
npm start 3003 node4 &