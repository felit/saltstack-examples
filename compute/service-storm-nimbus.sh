STORM_HOME=/opt/programs/apache-storm-0.9.3
START_SCRIPT=$/bin/nimbus
start() {
    echo "starting storm nimbus ..."
    nohup $STORM_HOME/bin/storm nimbus > $STORM_HOME/nimbus.out  &
    echo "started storm"
}
stop(){
    echo "stopping storm ..."
    ps -ef | grep storm.daemon.nimbus | grep -v grep | awk '{print $2}' |xargs sudo kill -9 
    echo "stopped storm"
}
restart(){
   stop
   start
}

status(){
   echo "unimplement..."
}
case "$1" in
start)
    start
    ;;
stop)
    stop
    ;;
restart)
    restart
    ;;
*)
    echo $"Usage $0 {start|stop|restart}"
	exit 2
esac
