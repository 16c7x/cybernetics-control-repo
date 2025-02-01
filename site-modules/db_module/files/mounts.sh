#!/bin/bash
# v1.0 - benjy@deepthought.com - initial release.
# v1.1 - benjy@deepthought.com - fixed that thing that I did.
# Print the header
echo "mountpoints:"

# List mount points and available space in gigabytes
df -k | tail -n +2 | awk '{
  if (NF >= 6) {
      mount_point=$6;
      size_gb=$4 / 1024 / 1024;
      printf " - %s: %.1fG\n", mount_point, size_gb;
  }
}'