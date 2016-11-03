#!bin/bash
set –ev

docker pull leonidas183/webapp:release

docker rm -f $(docker stop -t 5 $(docker ps -a -q --filter="ancestor=leonidas183/webapp:release"))

docker run -itd -p 5050:5000 webapp:release