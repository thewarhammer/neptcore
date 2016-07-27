#!/bin/bash

status=$(/bin/bash /etc/init.d/neptune-agentd status | grep -oh not|wc -l)
if [ $status -eq "1" ]; then
  su core; /home/core/agent/neptune-agent
else
  echo "the service is running"
fi
