cat << EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

# Check the exit status of the tee command
if [ $? -eq 0 ]; then
  echo "Writing to /etc/modules-load.d/containerd.conf was successful"
else
  echo "Writing to /etc/modules-load.d/containerd.conf failed"
fi