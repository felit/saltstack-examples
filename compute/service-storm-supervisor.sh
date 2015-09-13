STORM_HOME=/opt/programs/apache-storm-0.9.3
start() {
    echo "starting storm supervisor ..."
    nohup $STORM_HOME/bin/storm supervisor > $STORM_HOME/supervisor.out  &
    echo "started storm supervisor"
}
stop(){
    echo "stopping storm supervisor ..."
    ps -ef | grep storm.daemon.supervisor | grep -v grep | awk '{print $2}' |xargs sudo kill -9 
    echo "stopped storm supervisor"
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
