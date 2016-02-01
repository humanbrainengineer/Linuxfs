    1  wget -m ftp://192.168.1.108/sources-LFS-7.7-systemd/
    2  rm -rf 1
    3  rm -rf 192.168.1.108/
    4  wget ls
    5  ls
    6  rm -rf 192.168.1.108/
    7  wget ftp://192.168.1.108/7.7-systemd/
    8  ls
    9  rm -rf index.html 
   10  wget -m ftp://192.168.1.108/7.7-systemd/
   11  wget -m ftp://192.168.1.108/7.8-systemd/
   12  ls
   13  vi PS.txt
   14  vi PS.txt
   15  vi wget-list.txt 
   16  wget -m ftp://192.168.1.108/7.7-systemd/
   17  wget -m ftp://192.168.1.108/7.8-systemd/
   18  ifconfig
   19  ls
   20  wget -m ftp://192.168.1.108/sources-LFS-7.7-systemd/
   21  ls
   22  rm -rf 192.168.1.108/
   23  cat /etc/apt/sources.list
   24  vi /etc/apt/sources.list
   25  nano -w /etc/apt/sources.list
   26  apt-get update
   27  systemctl start network
   28  systemctl start network.service
   29  ifconfig
   30  ifconfig
   31  ifconfig
   32  ifconfig
   33  ifconfig
   34  ifconfig
   35  ifconfig
   36  ifconfig
   37  ifconfig
   38  ifconfig
   39  ifconfig
   40  ifconfig
   41  ifconfig
   42  ifconfig
   43  ifconfig
   44  ifconfig
   45  ifconfig
   46  ifconfig
   47  ifconfig
   48  ifconfig
   49  ifconfig
   50  ifconfig
   51  ifconfig
   52  ifconfig
   53  ifconfig
   54  ifconfig
   55  ifconfig
   56  ifconfig
   57  ifconfig
   58  ifconfig
   59  ifconfig
   60  ifconfig
   61  ifconfig
   62  ifconfig
   63  ifconfig
   64  ifconfig
   65  ifconfig
   66  ifconfig
   67  ifconfig
   68  ifconfig
   69  ifconfig
   70  ifconfig
   71  ifconfig
   72  ifconfig
   73  ifconfig
   74  ifconfig
   75  ifconfig
   76  ifconfig
   77  ifconfig
   78  ifconfig
   79  ifconfig
   80  ifconfig
   81  ifconfig
   82  ifconfig
   83  ifconfig
   84  ifconfig
   85  ifconfig
   86  ifconfig
   87  ifconfig
   88  ping www.baidu.com
   89  ping www.baidu.com
   90  ping www.baidu.com
   91  ping www.baidu.com
   92  ping www.baidu.com
   93  ping www.baidu.com
   94  ping www.baidu.com
   95  service networking restart
   96  service networking restart
   97  service networking start
   98  fdisk /dev/sdb
   99  fdisk /dev/sda
  100  fdisk /dev/sdb
  101  mkfs.ext4 /dev/sdb1
  102  mkswap /dev/sdb2
  103  swapon /dev/sdb2
  104  ls
  105  ls
  106  cat > version-check.sh << "EOF"
  107  #!/bin/bash
  108  # Simple script to list version numbers of critical development tools
  109  export LC_ALL=C
  110  bash --version | head -n1 | cut -d" " -f2-4
  111  echo "/bin/sh -> `readlink -f /bin/sh`"
  112  echo -n "Binutils: "; ld --version | head -n1 | cut -d" " -f3-
  113  bison --version | head -n1
  114  if [ -h /usr/bin/yacc ]; then
  115  echo "/usr/bin/yacc -> `readlink -f /usr/bin/yacc`";
  116  elif [ -x /usr/bin/yacc ]; then
  117  echo yacc is `/usr/bin/yacc --version | head -n1`
  118  else
  119  echo "yacc not found"
  120  fi
  121  bzip2 --version 2>&1 < /dev/null | head -n1 | cut -d" " -f1,6-
  122  echo -n "Coreutils: "; chown --version | head -n1 | cut -d")" -f2
  123  diff --version | head -n1
  124  find --version | head -n1
  125  gawk --version | head -n1
  126  if [ -h /usr/bin/awk ]; then
  127  echo "/usr/bin/awk -> `readlink -f /usr/bin/awk`";
  128  elif [ -x /usr/bin/awk ]; then
  129  echo yacc is `/usr/bin/awk --version | head -n1`
  130  else
  131  echo "awk not found"
  132  fi
  133  gcc --version | head -n1
  134  g++ --version | head -n1
  135  ldd --version | head -n1 | cut -d" " -f2- # glibc version
  136  grep --version | head -n1
  137  gzip --version | head -n1
  138  cat /proc/version
  139  m4 --version | head -n1
  140  make --version | head -n1
  141  patch --version | head -n1
  142  echo Perl `perl -V:version`
  143  sed --version | head -n1
  144  tar --version | head -n1
  145  makeinfo --version | head -n1
  146  xz --version | head -n1
  147  echo 'main(){}' > dummy.c && g++ -o dummy dummy.c
  148  if [ -x dummy ]
  149  then echo "g++ compilation OK";
  150  else echo "g++ compilation failed"; fi
  151  rm -f dummy.c dummy
  152  EOF
  153  ls
  154  chmod 777 version-check.sh 
  155  ./version-check.sh 
  156  apt-get install gcc
  157  ls
  158  ./version-check.sh 
  159  apt-get install bison
  160  ./version-check.sh 
  161  apt-get install g++
  162  ./version-check.sh 
  163  mkdir /opt/lfs
  164  mount /dev/sdb1 /opt/lfs/
  165  export LFS=/opt/lfs
  166  mkdir -v $LFS/sources
  167  chmod -v a+wt $LFS/sources
  168  cd /opt/lfs/sources/
  169  ls
  170  cp /home/ucb/192.168.1.108/7.7-systemd/* /opt/lfs/sources/
  171  ls
  172  mkdir -v $LFS/tools
  173  ln -sv $LFS/tools /
  174  groupadd lfs
  175  useradd -s /bin/bash -g lfs -m -k /dev/null lfs
  176  passwd lfs
  177  chown -v lfs.lfs $LFS/tools
  178  chown -v lfs.lfs $LFS/sources
  179  su - lfs
  180  chown -R root:root $LFS/tools
  181  mkdir -pv $LFS/{dev,proc,sys,run}
  182  mknod -m 600 $LFS/dev/console c 5 1
  183  mknod -m 666 $LFS/dev/null c 1 3
  184  mount -v --bind /dev $LFS/dev
  185  mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
  186  mount -vt proc proc $LFS/proc
  187  mount -vt sysfs sysfs $LFS/sys
  188  mount -vt tmpfs tmpfs $LFS/run
  189  if [ -h $LFS/dev/shm ]; then mkdir -pv $LFS/$(readlink $LFS/dev/shm); fi
  190  chroot "$LFS" /tools/bin/env -i HOME=/root TERM="$TERM" PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin /tools/bin/bash --login +h
  191  ls
  192  cd vim74/
  193  ls
  194  make install
  195  ln -sv vim /usr/bin/vi
  196  for L in /usr/share/man/{,*/}man1/vim.1; do ln -sv vim.1 $(dirname $L)/vi.1; done
  197  ln -sv ../vim/vim74/doc /usr/share/doc/vim-7.4
  198  cat > /etc/vimrc << "EOF"
  199  " Begin /etc/vimrc
  200  set nocompatible
  201  set backspace=2
  202  syntax on
  203  if (&term == "iterm") || (&term == "putty")
  204  set background=dark
  205  endif
  206  " End /etc/vimrc
  207  EOF
  208  vim -c ':options'
  209  cd ..
  210  rm -rf vim74/
  211  logout
  212  chroot $LFS /tools/bin/env -i HOME=/root TERM=$TERM PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /tools/bin/bash --login
  213  exit
  214  su - lfs
  215  chroot $LFS /tools/bin/env -i HOME=/root TERM=$TERM PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /tools/bin/bash --login
  216  /tools/bin/find /{,usr/}{bin,lib,sbin} -type f -exec /tools/bin/strip --strip-debug '{}' ';'
  217  chroot "$LFS" /usr/bin/env -i HOME=/root TERM="$TERM" PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /bin/bash --login
  218  cat > /etc/systemd/network/10-static-eth0.network << "EOF"
[Match]
Name=eth0
[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
EOF

  219  cat > /etc/systemd/network/10-static-eth0.network << "EOF"
[Match]
Name=eth0
[Network]
Address=192.168.1.2/24
Gateway=192.168.1.1
DNS=192.168.1.1
EOF

  220  cat /etc/systemd/network/10-static-eth0.network 
  221  cat > /etc/systemd/network/10-dhcp-eth0.network << "EOF"
[Match]
Name=eth0
[Network]
DHCP=yes
EOF

  222  cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf
nameserver 180.76.76.76
nameserver 223.5.5.5
# End /etc/resolv.conf
EOF

  223  ln -sfv /run/systemd/resolve/resolv.conf /etc/resolv.conf
  224  echo "HOSTNAME=mylinux" > /etc/hostname
  225  cat > /etc/hosts << "EOF"
# Begin /etc/hosts (no network card version)
127.0.0.1 mylinux localhost
::1 localhost
# End /etc/hosts (no network card version)
EOF

  226  udevadm info -a -p /sys/class/video4linux/video0
  227  cat > /etc/udev/rules.d/83-duplicate_devs.rules << "EOF"
# Persistent symlinks for webcam and tuner
KERNEL=="video*", ATTRS{idProduct}=="1910", ATTRS{idVendor}=="0d81", \
SYMLINK+="webcam"
KERNEL=="video*", ATTRS{device}=="0x036f", ATTRS{vendor}=="0x109e", \
SYMLINK+="tvtuner"
EOF

  228  cat > /etc/adjtime << "EOF"
0.0 0 0.0 0
LOCAL EOF

  229  cat > /etc/adjtime << "EOF"
0.0 0 0.0 0
LOCAL
EOF

  230  cat > /etc/vconsole.conf << "EOF"
KEYMAP=de-latin1
FONT=Lat2-Terminus16
EOF

  231  cat > /etc/locale.conf << "EOF"
LANG=<ll>_<CC>.<charmap><@modifiers>
EOF

  232  pwd
  233  ls
  234  cat /etc/vconsole.conf 
  235  echo $LFS
  236  echo LFS
  237  export LFS=/opt/lfs/
  238  echo $LFS
  239  chroot "$LFS" /tools/bin/env -i HOME=/root TERM="$TERM" PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin /tools/bin/bash --login +h
  240  chroot $LFS /tools/bin/env -i HOME=/root TERM=$TERM PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /tools/bin/bash --login
  241  history
  242  history >> LFSlogout.txt
