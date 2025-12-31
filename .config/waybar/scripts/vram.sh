#!/bin/bash
mem=$(nvidia-smi --query-gpu=memory.used,memory.total --format=csv,noheader,nounits 2>/dev/null)
if [ $? -eq 0 ]; then
  used=$(echo $mem | cut -d',' -f1 | xargs)
  total=$(echo $mem | cut -d',' -f2 | xargs)
  percent=$(awk "BEGIN {printf \"%.0f\", ($used/$total)*100}")
  echo "{\"text\": \"$percent%\", \"tooltip\": \"VRAM: ${used}M / ${total}M\", \"percentage\": $percent}"
else
  echo "{\"text\": \"N/A\", \"tooltip\": \"NVIDIA GPU not found\"}"
fi
