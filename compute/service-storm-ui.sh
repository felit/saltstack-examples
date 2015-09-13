STORM_HOME=/opt/programs/apache-storm-0.9.3
start() {
    echo "starting storm ui ..."
    nohup $STORM_HOME/bin/storm ui > $STORM_HOME/ui.out  &
    echo "started storm ui"
}
stop(){
    echo "stopping storm ui ..."
    ps -ef | grep storm.ui.core | grep -v grep | awk '{print $2}' |xargs sudo kill -9 
    echo "stopped storm ui"
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
