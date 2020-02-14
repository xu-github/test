

#root的定时任务配置文件/var/spool/cron/root
#echo "* * * * sh /data/java/startSelfRun.sh" > /var/spool/cron/root


jdk_dir="/data/java/jdk1.8.0_161"
jar_dir="/data/java"
jar_name="bwjf-0.0.1-SNAPSHOT.jar"

BUILD_ID="DONOTKILLME"

ps -ef|grep -E $jar_dir/$jar_name|grep -v grep > /dev/null

if [ $? -ne 0 ]; then
    nohup $jdk_dir/bin/java -jar $jar_dir/$jar_name &
fi
