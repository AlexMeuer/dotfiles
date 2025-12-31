#!/bin/bash
usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits 2>/dev/null)
if [ $? -eq 0 ]; then
  echo "$usage"
else
  echo "N/A"
fi
