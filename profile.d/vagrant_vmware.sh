if vagrant plugin list 2>&1 | grep -q fusion; then
    export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
fi
