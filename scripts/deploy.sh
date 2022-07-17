#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
  target/Sweater-1.0-SNAPSHOT.jar \
  root@127.0.0.1:/home

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa root@127.0.0.1 << EOF

pgrep java | xargs kill -9
nohup java -jar Sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'