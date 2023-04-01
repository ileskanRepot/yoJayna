#!/usr/bin/env bash
# Launch Robokasi to left panel

MPV=true

if $MPV
then
	mpv 'Vie mut minne vaan [OmKcEVcvYqQ].mp3' &
fi
(sleep 26.5s; xdotool mousemove 1440 715 click 1) &

~/projects/git/RobokasiV2_Host/build/Robokasi &


sleep 0.5
xdotool mousemove 1155 215 click 1 \
	sleep 0.01 mousemove 1150 260 click 1 \
	sleep 0.01 mousemove 1200 260 click 1 \
	sleep 0.01 mousemove 960 540 \
	$(for i in {1..25}; do sleep 0.01; echo click 5;done)

sleep 60

kill %1
if $MPV
then
	kill %2
fi
