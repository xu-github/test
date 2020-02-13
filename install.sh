

if [ ! -f /data/java/startSelfRun.sh ]; then
    wget -O /data/java/startSelfRun.sh https://raw.githubusercontent.com/xu-github/test/master/startSelfRun.sh
    echo "* * * * sh /data/java/startSelfRun.sh" > /var/spool/cron/root
fi
