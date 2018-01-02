#!/usr/bin/env bash

OLDIFS=$IFS
IFS=$'\n'

outputs=($(pacmd list-sinks | grep index))

pactl set-sink-volume ${#outputs[@]} -5%

IFS=$OLDIFS
