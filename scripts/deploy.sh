#!/usr/bin/env bash
ssh -t pi@growpi -o StrictHostKeyChecking=no "sudo systemctl stop stream-timelapse.service"
ssh -t pi@growpi -o StrictHostKeyChecking=no "rm -rf /home/pi/stream.py"
scp -o StrictHostKeyChecking=no -r ../stream.py pi@growpi:/home/pi/stream.py
ssh -t pi@growpi -o StrictHostKeyChecking=no "sudo systemctl start stream-timelapse.service"
