#!/bin/sh
#please make this make file executable using : chmod u+x .....  , download jq shell using brew or any online tool
echo "Save info about application running"

#addressLineOne="$(curl -H 'access_token : Zs0nTQB-ujOSV0KmEoPhBx2E6-Ab_GKO' -H 'Content-Type : application/json' http://api.masterdatanode.com/demo/greeting/find?LANGUAGE=ENGLISH | jq -r '.greeting' | jq -r '.[].TRANSLATION')"
# * */6 * * * /Volumes/MyMac/development/scheduler/unixprocess.sh

PROCESS=command
number=$(ps -ax | grep  Applications | wc -l )

if [ $number -gt 0 ]
    then
        echo Total running process $number;
        curl -H "access_token : ########Access_Token########" -H "Content-Type : application/json" -H "user-agent : chrome/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko)" --data "{ \"data\" : [{ \"process\" : \"$number\", \"machine\" : \"192.168.0.2\" }]}" http://api.masterdatanode.com/unix/process/save/
fi
