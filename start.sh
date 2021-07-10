#!/bin/sh

cd $CARLA_ROOT
DISPLAY= ./CarlaUE4.sh -opengl &
echo loading...
sleep 10
cd $CARLA_ROOT/PythonAPI/util
python3 config.py -m Town04 --fps 10 --weather CloudyNoon
cd .$CARLA_ROOT/PythonAPI/examples
python3 spawn_npc.py --car-lights-on --sync --safe -w 0 -n 25

echo ready... steady... go!
