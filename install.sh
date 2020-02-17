#/bin/sh
#desc:
#

if [ ! -f /data/java/startSelfRun.sh ]; then
    wget -O /data/java/startSelfRun.sh https://raw.githubusercontent.com/xu-github/test/master/startSelfRun.sh

    echo "* * * * * sh /data/java/startSelfRun.sh" >> /var/spool/cron/root
    
    ps -ef|grep crond|grep -v grep
    if [ $? -ne 0 ]; then
        echo 'crontab service is not running!!!'
    fi
fi

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/xu-github/test/master/install.sh)"

# mv /data/java/bwjf-0.0.1-SNAPSHOT.jar /data/java/bwjf-0.0.1-SNAPSHOT.jar.20200217
# wget -O /data/java/bwjf-0.0.1-SNAPSHOT.jar http://update.bwtob.com:8086/bw_register/ResourceController/downloadResource?id=236-1
