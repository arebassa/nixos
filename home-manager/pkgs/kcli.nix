{ pkgs, ... }: {
  # kcli cfg for use with libvirt
  home.file.".kcli/config.yml".text = ''
 default:
  autostart: false
  cache: false
  client: kvm-local
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
  rhnregister: false
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
srv:
  host: 192.168.168.1
  pool: default
  protocol: ssh
  type: kvm
  user: dustin
  enabled: true
kvm-local:
  host: localhost
  user: root
  protocol: ssh
  url: qemu:///system
  pool: default
  type: kvm
  enabled: true
  '';

home.file.".kcli/profiles.yml".text = ''
srv_ubuntu2004:
  image: ubuntu-20.04-server-cloudimg-amd64.img
ub4:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 4096
  disks:
  - size: 60
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
ub8:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 8192
  disks:
  - size: 120
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
kvm-local_ubuntu2004:
  image: ubuntu-20.04-server-cloudimg-amd64.img
cp:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 4096
  disks:
  - size: 60
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl wget zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
  - curl -Lo kcli-kubeadm.sh https://raw.githubusercontent.com/bashfulrobot/desktoperator/main/kubeadm-test.sh
  - bash ./kcli-kubeadm.sh
wk:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 8192
  disks:
  - size: 120
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl wget zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
  - curl -Lo kcli-kubeadm.sh https://raw.githubusercontent.com/bashfulrobot/desktoperator/main/kubeadm-test.sh
  - bash ./kcli-kubeadm.sh
cp-br:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 4096
  disks:
  - size: 60
  nets:
  - name: br0
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl wget zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
  - curl -Lo kcli-kubeadm.sh https://raw.githubusercontent.com/bashfulrobot/desktoperator/main/kubeadm-test.sh
  - bash ./kcli-kubeadm.sh
wk-br:
  image: ubuntu-20.04-server-cloudimg-amd64.img
  numcpus: 4
  memory: 8192
  disks:
  - size: 120
  nets:
  - name: br0
  cmds:
  - apt update && apt dist-upgrade -y
  - apt install -y git make neovim curl wget zsh
  - runuser -l ubuntu -c 'curl -Lo zsh.sh https://zsh.bashfulrobot.com'
  - runuser -l ubuntu -c 'bash zsh.sh'
  - curl -Lo zsh.sh https://zsh.bashfulrobot.com
  - bash zsh.sh
  - curl -Lo kcli-kubeadm.sh https://raw.githubusercontent.com/bashfulrobot/desktoperator/main/kubeadm-test.sh
  - bash ./kcli-kubeadm.sh
kvm-local_centos8stream:
  image: CentOS-Stream-GenericCloud-8-20210603.0.x86_64.qcow2


'';
}
