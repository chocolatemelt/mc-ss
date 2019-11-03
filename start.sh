#!/usr/bin/sh

# java -Xmx1536M -Xms512M -jar server.jar

until java -Xmx3000M -Xms1024M -jar fabric-server-launch.jar; do
	echo "Server crashed with exit code $?, restarting..." >&2
	sleep 1
done

