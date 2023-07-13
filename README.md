# streaming_timelapse

## Summary
Launches a python web server which provides a stream of the web cam attached to the raspberry pi.  It will also save
a jpg image to the disk every 15m

### Service Installation
1. Copy `scripts/stream-timelapse.service` to `/lib/systemd/system`
2. Execute `sudo systemctl daemon-reload`
3. Execute `sudo systemctl enable stream-timelapse.service`
4. Reboot, test streaming server launches

### Running
executing the `scripts/deploy.sh` will stop the (remotely running) service,  push the new `stream.py`, and restart
the service.

Replace `growpi` within the file to your raspberry pi's hostname or IP
