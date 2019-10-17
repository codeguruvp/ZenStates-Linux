#!/bin/bash
if [ "${1}" == "post" ]; then
 
# Disable c6 coming out of sleep
/opt/ZenStates-Linux/zenstates.py --c6-disable
fi
