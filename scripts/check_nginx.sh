#!/bin/bash
curl -s localhost | grep -q 'MISSION CONTROL' && exit 0
exit 1
