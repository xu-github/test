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
