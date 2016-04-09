if which vagrant > /dev/null; then
    if vagrant plugin list | grep -q vagrant-vmware-fusion; then
        export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
        export VAGRANT_VMWARE_CLONE_DIRECTORY=$HOME/Vagrant\ VMWare\ Machines
    fi
fi
