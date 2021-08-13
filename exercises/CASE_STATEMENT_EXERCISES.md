# EXAMPLE 1
**Create a startup script for an application called sleep-wlking-server, which is provided below. The script should be named sleep-walking and accept "start" and "stop" as arguments. If anything other than start or "stop" is provided as an argument, display a usage statement "Usage sleep-wlking start|stop" and terminate  the script with an exit status of 1.**

<pre>
#!/bin/bash

PID_FILE="/tmp/sleep-walking-server.pid"

trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE

while true
do
    
done
</pre>