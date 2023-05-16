{ pkgs, ... }: {
  # kcli cfg for use with libvirt
  home.file.".kcli/config.yml".text = ''
        default:
      autostart: false
      cache: false
      client: local
      cloudinit: true
      cpuhotplug: false
      cpumodel: host-model
      diskinterface: virtio
      disks:
      - default: true
        size: 10
      disksize: 10
      diskthin: true
      enableroot: true
      guestid: guestrhel764
      insecure: true
      jenkinsmode: podman
      keep_networks: false
      memory: 512
      memoryhotplug: false
      nested: true
      nets:
      - default
      networkwait: 0
      notify: false
      notifymethods:
      - pushbullet
      numcpus: 2
      pool: default
      privatekey: false
      reservedns: false
      reservehost: false
      reserveip: false
      rhnregister: true
      rhnserver: https://subscription.rhsm.redhat.com
      rhnunregister: false
      rng: false
      sharedkey: false
      start: true
      storemetadata: false
      tempkey: false
      tpm: false
      tunnel: false
      tunneldir: /var/www/html
      tunnelport: 22
      tunneluser: root
      vmrules_strict: false
      vnc: true
      wait: false
      waittimeout: 0
      yamlinventory: false
      zerotier_kubelet: false
    local:
      host: 127.0.0.1
      pool: default
      protocol: ssh
      type: kvm
      user: root

  '';
}
