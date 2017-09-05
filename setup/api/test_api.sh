#!/bin/sh
key=1957ae85-a5d7-4603-a37f-070f3887dbf9
url=http://ec2-52-203-231-142.compute-1.amazonaws.com:8080
user=michael.lynn@mongodb.com
#echo curl -i -u "${user}:${key}" --digest "${url}/api/public/v1.0/serverPool/"
#curl -vv -i -u "${user}:${key}" --digest "${url}/api/public/v1.0/serverPool/"
echo curl -vv -i -u "${user}:${key}" --digest "${url}/api/public/v1.0/serverPool/key"
curl -vv -i -u "${user}:${key}" --digest "${url}/api/public/v1.0/serverPool/"

