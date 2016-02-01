   67  tar xf libtool-2.4.6.tar.xz 
   68  cd libtool-2.4.6
   69  cd ./configure --prefix=/usr
   70  ./configure --prefix=/usr
   71  make
   72  make installl
   73  make check
   74  make
   75  make install
   76  cd ..
   77  rm -rf libtool-2.4.6
   78  tar xzf gdbm-1.11.tar.gz 
   79  cd gdbm-1.11
   80  ./configure --prefix=/usr --enable-libgdbm-compat
   81  make
   82  make check
   83  make install
   84  cd ..
   85  rm -rf gdbm-1.11
   86  tar zxf expat-2.1.0.tar.gz 
   87  cd expat-2.1.0
   88  ./configure --prefix=/usr 
   89  make
   90  make check
   91  make install
   92  install -v -dm775 /usr/share/doc/expat-2.1.0
   93  install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.1.0/
   94  cd ..
   95  rm -rf expat-2.1.0
   96  tar zxf inetutils-1.9.2.tar.gz 
   97  cd inetutils-1.9.2
   98  echo '#define PATH_PROCNET_DEV "/proc/net/dev"' >> ifconfig/system/linux.h
   99  ./configure --prefix=/usr --localstatedir=/var --disable-logger --disable-syslogd --disable-whois --disable-servers
  100  make
  101  make check
  102  make install
  103  mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
  104  mv -v /usr/bin/ifconfig /sbin
  105  cd ..
  106  rm -rf inetutils-1.9.2
  107  tar xjf perl-5.20.2.tar.bz2 
  108  cd perl-5.20.2
  109  echo "127.0.0.1 localhost $(hostname)" > /etc/hosts
  110  export BUILD_ZLIB=False
  111  export BUILD_BZIP2=0
  112  sh Configure -des -Dprefix=/usr -Dvendorprefix=/usr -Dman1dir=/usr/share/man/man1 -Dman3dir=/usr/share/man/man3 -Dpager="/usr/bin/less -isR" -Duseshrplib
  113  make
  114  make -k test
  115  make install
  116  unset BUILD_ZLIB BUILD_BZIP2
  117  cd ..
  118  rm -rf perl-5.20.
  119  tar -Jxf autoconf-2.69.tar.xz 
  120  cd autoconf-2.69
  121  ./configure --prefix=/usr
  122  make
  123  make check
  124  make install
  125  cd ..
  126  rm -rf autoconf-2.69
  127  tar -Jxf automake-1.15.tar.xz 
  128  cd automake-1.15
  129  ./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.15
  130  make
  131  sed -i "s:./configure:LEXLIB=/usr/lib/libfl.a &:" t/lex-{clean,depend}-cxx.sh
  132  make -j4 check
  133  make install
  134  cd..
  135  cd ..
  136  rm -rf automake-1.15
  137  wget
  138  ls /
  139  ls /home/
  140  ls
  141  ls /home/
  142  ls /
  143  tar -Jxf diffutils-3.3.tar.xz 
  144  cd diffutils-3.3
  145  sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in
  146  ./configure --prefix=/usr
  147  make
  148  make check
  149  make install
  150  cd ..
  151  rm -rf diffutils-3.3
  152  tar -Jxf gawk-4.1.1.tar.xz 
  153  cd gawk-4.1.1
  154  ./configure --prefix=/usr
  155  make
  156  make check
  157  make install
  158  mkdir -v /usr/share/doc/gawk-4.1.1
  159  cp -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.1.1
  160  cd ..
  161  rm -rf gawk-4.1.1
  162  tar xzf findutils-4.4.2.tar.gz 
  163  cd findutils-4.4.2
  164  ./configure --prefix=/usr --localstatedir=/var/lib/locate
  165  make
  166  make check
  167  make install
  168  mv -v /usr/bin/find /bin
  169  sed -i 's/find:=${BINDIR}/find:=\/bin/' /usr/bin/updatedb
  170  cd ..
  171  rm -rf findutils-4.4.2
  172  tar xzf gettext-0.19.4.tar.xz 
  173  tar xf gettext-0.19.4.tar.xz 
  174  cd gettext-0.19.4
  175  ./configure --prefix=/usr --docdir=/usr/share/doc/gettext-0.19.4
  176  make
  177  make check
  178  make install
  179  cd ..
  180  rm -rf gettext-0.19.4
  181  tar xzf intltool-0.50.2.tar.gz 
  182  cd intltool-0.50.2
  183  ./configure --prefix=/usr 
  184  cd ..
  185  tar zxf XML-Parser-2.44.tar.gz 
  186  cd XML-Parser-2.44
  187  perl Makefile.PL
  188  make
  189  make test
  190  make install
  191  cd ..
  192  rm -rf XML-Parser-2.44
  193  cd intltool-0.50.2
  194  ./configure --prefix=/usr 
  195  make
  196  make check
  197  make install
  198  install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.50.2/I18N- HOWTO
  199  cd ..
  200  rm -rf intltool-0.50.2
  201  tar xzf gperf-3.0.4.tar.gz 
  202  cd gperf-3.0.4
  203  ./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.0.4
  204  make
  205  make check
  206  make install
  207  cd ..
  208  rm -rf gperf-3.0.4
  209  tar xzf groff-1.22.3.tar.gz 
  210  cd groff-1.22.3
  211  PAGE=<paper_size> ./configure --prefix=/usr
  212  make
  213  make install
  214  cd ..
  215  rm -rf groff-1.22.3
  216  tar -Jxf xz-5.2.0.tar.xz 
  217  cd xz-5.2.0
  218  ./configure --prefix=/usr --docdir=/usr/share/doc/xz-5.2.0
  219  make
  220  make check
  221  make install
  222  mv -v /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
  223  mv -v /usr/lib/liblzma.so.* /lib
  224  ln -svf ../../lib/$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so
  225  cd ..
  226  rm -rf xz-5.2.0
  227  tar -Jxf grub-2.02~beta2.tar.xz 
  228  cd grub-2.02~beta2
  229  sed -i -e '/gets is a/d' grub-core/gnulib/stdio.in.h
  230  ./configure --prefix=/usr --sbindir=/sbin --sysconfdir=/etc --disable-grub-emu-usb --disable-efiemu --disable-werror
  231  sed -i -e '/gets is a/d' grub-core/gnulib/stdio.in.h
  232  ./configure --prefix=/usr --sbindir=/sbin --sysconfdir=/etc --disable-grub-emu-usb --disable-efiemu --disable-werror
  233  cd ..
  234  tar xf bison-3.0.4.tar.xz 
  235  cd bison-3.0.4
  236  ./configure --prefix=/usr/ --docdir=/usr/share/doc/bison-3.0.4
  237  make
  238  make check
  239  make install
  240  cd ..
  241  rm -rf bison-3.0.4
  242  ls
  243  cd grub-2.02~beta2
  244  ./configure --prefix=/usr --sbindir=/sbin --sysconfdir=/etc --disable-grub-emu-usb --disable-efiemu --disable-werror
  245  make
  246  make install
  247  cd ..
  248  rm -rf grub-2.02~beta2
  249  tar xzf less-458.tar.gz 
  250  cd less-458
  251  ./configure --prefix=/usr --sysconfdir=/etc
  252  make
  253  make install
  254  cd ..
  255  rm less-458
  256  tar -Jxf gzip-1.6.tar.xz 
  257  cd gzip-1.6
  258  ./configure --prefix=/usr --bindir=/bin
  259  make
  260  make install
  261  mv -v /bin/{gzexe,uncompress,zcmp,zdiff,zegrep} /usr/bin
  262  mv -v /bin/{zfgrep,zforce,zgrep,zless,zmore,znew} /usr/bin
  263  cd ..
  264  rm -rf less-458
  265  rm -rf gzip-1.6
  266  tar -Jxf iproute2-3.19.0.tar.xz 
  267  cd iproute2-3.19.0
  268  sed -i '/^TARGETS/s@arpd@@g' misc/Makefile
  269  sed -i /ARPD/d Makefile
  270  sed -i 's/arpd.8//' man/man8/Makefile
  271  make
  272  make DOCDIR=/usr/share/doc/iproute2-3.19.0 install
  273  cd ..
  274  rm -rf iproute2-3.19.0
  275  tar xzf kbd-2.0.2.tar.gz 
  276  cd kbd-2.0.2
  277  patch -Np1 -i ../kbd-2.0.2-backspace-1.patch
  278  sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
  279  sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
  280  PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr --disable-vlock
  281  make
  282  make install
  283  mkdir -v /usr/share/doc/kbd-2.0.2
  284  cp -R -v docs/doc/* /usr/share/doc/kbd-2.0.2
  285  cd ..
  286  rm -rf kbd-2.0.2
  287  tar -Jxf kmod-19.tar.xz 
  288  cd kmod-19
  289  ./configure --prefix=/usr --bindir=/bin --sysconfdir=/etc --with-rootlibdir=/lib --with-xz --with-zlib
  290  make
  291  make install
  292  make -C man install
  293  for target in depmod insmod modinfo modprobe rmmod; do ln -sv ../bin/kmod /sbin/$target; done
  294  ln -sv kmod /bin/lsmod
  295  cd ..
  296  rm -rf kmod-19
  297  tar xzf libpipeline-1.4.0.tar.gz 
  298  cd libpipeline-1.4.0
  299  PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr
  300  make
  301  make install
  302  cd //
  303  cd /sources/
  304  cd ..
  305  ls
  306  cd /sources/
  307  ls
  308  rm -rf libpipeline-1.4.0
  309  tar xjf make-4.1.tar.bz2 
  310  cd make-4.1
  311  ./configure --prefix=/usr
  312  make
  313  history
  314  make install
  315  cd ..
  316  rm -rf make-4.1
  317  tar -Jxf patch-2.7.4.tar.xz 
  318  cd patch-2.7.4
  319  ./configure --prefix=/usr
  320  make
  321  make install
  322  cd ..
  323  rm -rf patch-2.7.4
  324  tar -Jxf systemd-219.tar.xz 
  325  cd systemd-219
  326  at > config.cache << "EOF"
  327  KILL=/bin/kill
  328  HAVE_BLKID=1
  329  BLKID_LIBS="-lblkid"
  330  BLKID_CFLAGS="-I/tools/include/blkid"
  331  HAVE_LIBMOUNT=1
  332  MOUNT_LIBS="-lmount"
  333  MOUNT_CFLAGS="-I/tools/include/libmount"
  334  cc_cv_CFLAGS__flto=no
  335  EOF
  336  cat > config.cache << "EOF"
  337  KILL=/bin/kill
  338  HAVE_BLKID=1
  339  BLKID_LIBS="-lblkid"
  340  BLKID_CFLAGS="-I/tools/include/blkid"
  341  HAVE_LIBMOUNT=1
  342  MOUNT_LIBS="-lmount"
  343  MOUNT_CFLAGS="-I/tools/include/libmount"
  344  cc_cv_CFLAGS__flto=no
  345  EOF
  346  sed -i "s:blkid/::" $(grep -rl "blkid/blkid.h")
  347  patch -Np1 -i ../systemd-219-compat-1.patch
  348  sed -i "s:test/udev-test.pl ::g" Makefile.in
  349  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --config-cache --with-rootprefix= --with-rootlibdir=/lib --enable-split-usr --disable-gudev --disable-firstboot --disable-ldconfig --disable-sysusers --without-python --docdir=/usr/share/doc/systemd-219 --with-dbuspolicydir=/etc/dbus-1/system.d --with-dbussessionservicedir=/usr/share/dbus-1/services --with-dbussystemservicedir=/usr/share/dbus-1/system-services
  350  make LIBRARY_PATH=/tools/lib
  351  make LD_LIBRARY_PATH=/tools/lib install
  352  mv -v /usr/lib/libnss_{myhostname,mymachines,resolve}.so.2 /lib
  353  rm -rfv /usr/lib/rpm
  354  for tool in runlevel reboot shutdown poweroff halt telinit; do ln -sfv ../bin/systemctl /sbin/${tool}; done
  355  ln -sfv ../lib/systemd/systemd /sbin/init
  356  sed -i "s:0775 root lock:0755 root root:g" /usr/lib/tmpfiles.d/legacy.conf
  357  sed -i "/pam.d/d" /usr/lib/tmpfiles.d/etc.conf
  358  systemd-machine-id-setup
  359  sed -i "s:minix:ext4:g" src/test/test-path-util.c
  360  make LD_LIBRARY_PATH=/tools/lib -k check
  361  cd ..
  362  rm -rf systemd-219
  363  tar xzf dbus-1.8.16.tar.gz 
  364  cd dbus-1.8.16
  365  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --docdir=/usr/share/doc/dbus-1.8.16 --with-console-auth-dir=/run/console
  366  make
  367  make install
  368  mv -v /usr/lib/libdbus-1.so.* /lib
  369  ln -sfv ../../lib/$(readlink /usr/lib/libdbus-1.so) /usr/lib/libdbus-1.so
  370  ln -sfv /etc/machine-id /var/lib/dbus
  371  cd ..
  372  rm -rf dbus-1.8.16
  373  tar -Jxf util-linux-2.26.tar.xz 
  374  cd util-linux-2.26
  375  mkdir -pv /var/lib/hwclock
  376  ./configure ADJTIME_PATH=/var/lib/hwclock/adjtime --docdir=/usr/share/doc/util-linux-2.26 --disable-chfn-chsh --disable-login --disable-nologin --disable-su --disable-setpriv --disable-runuser --disable-pylibmount --without-python
  377  make
  378  su nobody -s /bin/bash -c "PATH=$PATH make -k check"
  379  make install
  380  cd ..
  381  rm -rf util-linux-2.26
  382  tar -Jxf man-db-2.7.1.tar.xz 
  383  cd man-db-2.7.1
  384  ./configure --prefix=/usr --docdir=/usr/share/doc/man-db-2.7.1 --sysconfdir=/etc --disable-setuid --with-browser=/usr/bin/lynx --with-vgrind=/usr/bin/vgrind --with-grap=/usr/bin/grap
  385  make
  386  cd ..
  387  rm -rf man-db-2.7.1
  388  tar -Jxf man-db-2.7.1.tar.xz 
  389  ./configure --prefix=/usr --docdir=/usr/share/doc/man-db-2.7.1 --sysconfdir=/etc --disable-setuid --with-browser=/usr/bin/lynx --with-vgrind=/usr/bin/vgrind --with-grap=/usr/bin/grap
  390  cd man-db-2.7.1
  391  ./configure --prefix=/usr --docdir=/usr/share/doc/man-db-2.7.1 --sysconfdir=/etc --disable-setuid --with-browser=/usr/bin/lynx --with-vgrind=/usr/bin/vgrind --with-grap=/usr/bin/grap
  392  make
  393  make check
  394  make install
  395  sed -i "s:man root:root root:g" /usr/lib/tmpfiles.d/man-db.conf
  396  cd ..
  397  rm -rf man-db-2.7.1
  398  tar -Jxf tar-1.28.tar.xz 
  399  cd tar-1.28
  400  FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr --bindir=/bin
  401  make
  402  make check
  403  make install
  404  make -C doc install-html docdir=/usr/share/doc/tar-1.28
  405  cd ..
  406  rm -rf tar-1.28
  407  tar -Jxf texinfo-5.2.tar.xz 
  408  cd texinfo-5.2
  409  ./configure --prefix=/usr
  410  make
  411  make
  412  make check
  413  make install
  414  make TEXMF=/usr/share/texmf install-tex
  415  pushd /usr/share/info
  416  rm -v dir
  417  for f in *; do install-info $f dir 2>/dev/null; done
  418  popd
  419  cd ..
  420  rm -rf texinfo-5.2
  421  tar xjf vim-7.4.tar.bz2
  422  tar xf vim-7.4.tar.bz2
  423  cd vim74/
  424  echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
  425  ./configure --prefix=/usr
  426  ls
  427  cd ..
  428  rm -rf vim74/
  429  ls -la vim*
  430  tar xf vim-7.4.tar.bz2.1 
  431  cd vim-7.4.tar.bz2
  432  cd vim-7.4.tar.bz2.1 
  433  cd vim74/
  434  ;s
  435  ls
  436  echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
  437  ./configure --prefix=/usr
  438  make
  439  make -j4 test
  440  ls
  441  ls
  442  ls
  443  ls
  444  ls
  445  ls
  446  ls
  447  ls
  448  lshis
  449  hhsadasdasdasdasdasdasdls
  450  ls
  451  :q
  452  ;:q
  453  q;
  454  q!
  455  :q!
  456  :q!
  457  ls
  458  pwd
  459  pwd
  460  pwd
  461  ls
  462  ls
  463  ls
  464  ls
  465  cd ~
  466  ls
  467  pwd
  468  cd /
  469  ls
  470  pwd
  471  cd sources/
  472  ls
  473  tar xf vim-7.4.tar.bz2.1 
  474  cd vim74/
  475  ls
  476  echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
  477  ./configure --prefix=/usr
  478  make
  479  make install
  480  ln -sv vim /usr/bin/vi
  481  for L in /usr/share/man/{,*/}man1/vim.1; do ln -sv vim.1 $(dirname $L)/vi.1; done
  482  ln -sv ../vim/vim74/doc /usr/share/doc/vim-7.4
  483  cat > /etc/vimrc << "EOF"
  484  " Begin /etc/vimrc
  485  set nocompatible
  486  set backspace=2
  487  syntax on
  488  if (&term == "iterm") || (&term == "putty")
  489  set background=dark
  490  endif
  491  " End /etc/vimrc
  492  EOF
  493  cd ..
  494  rm -rf vim-7.4
  495  rm -rf vim74/
  496  logout
  497  whoami
  498  /tools/bin/find /{,usr/}{bin,lib,sbin} -type f -exec /tools/bin/strip --strip-debug '{}' ';'
  499  chroot "$LFS" /usr/bin/env -i HOME=/root TERM="$TERM" PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /bin/bash --login
  500  chroot "$LFS" /usr/bin/env -i HOME=/root TERM="$TERM" PS1='\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin /bin/bash --login
  501  su - lfs
  502  cd ~
  503  ls
  504  ls /
  505  cat > /etc/systemd/network/10-static-eth0.network << "EOF"
[Match]
Name=eth0
[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
EOF

  506  vi /etc/systemd/network/10-static-eth0.network 
  507  cat > /etc/systemd/network/10-dhcp-eth0.network << "EOF"
[Match]
Name=eth0
[Network]
DHCP=yes
EOF

  508  cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf
nameserver 180.76.76.76
nameserver 223.5.5.5
# End /etc/resolv.conf
EOF

  509  ln -sfv /run/systemd/resolve/resolv.conf /etc/resolv.conf
  510  echo "HOSTNAME=mylinux" > /etc/hostname
  511  cat > /etc/hosts << "EOF"
# Begin /etc/hosts (no network card version)
127.0.0.1 mylinux localhost
::1 localhost
# End /etc/hosts (no network card version)
EOF

  512  udevadm info -a -p /sys/class/video4linux/video0
  513  cat > /etc/udev/rules.d/83-duplicate_devs.rules << "EOF"
# Persistent symlinks for webcam and tuner
KERNEL=="video*", ATTRS{idProduct}=="1910", ATTRS{idVendor}=="0d81", \
SYMLINK+="webcam"
KERNEL=="video*", ATTRS{device}=="0x036f", ATTRS{vendor}=="0x109e", \
SYMLINK+="tvtuner"
EOF

  514  cat > /etc/adjtime << "EOF"
0.0 0 0.0 0
LOCAL EOF

  515  cat > /etc/adjtime << "EOF"
0.0 0 0.0 0
LOCAL
EOF

  516  cat > /etc/vconsole.conf << "EOF"
KEYMAP=de-latin1
FONT=Lat2-Terminus16
EOF

  517  cat > /etc/locale.conf << "EOF"
LANG=<ll>_<CC>.<charmap><@modifiers>
EOF

  518  cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>


# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off


# Enable 8bit input
set meta-flag On
set input-meta On


# Turns off 8th bit stripping
set convert-meta Off


# Keep the 8th bit for display
set output-meta On


# none, visible or audible
set bell-style none


# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word


# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert


# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line


# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line


# End /etc/inputrc
EOF

  519  cat > /etc/shells << "EOF"
# Begin /etc/shells
/bin/sh
/bin/bash
# End /etc/shells
EOF

  520  mkdir -pv /etc/systemd/system/getty@tty1.service.d
  521  cat > /etc/systemd/system/getty@tty1.service.d/noclear.conf << EOF
[Service]
TTYVTDisallocate=no
EOF

  522  ln -sfv /dev/null /etc/systemd/system/tmp.mount
  523  mkdir -pv /etc/systemd/system/foobar.service.d
  524  cat > /etc/systemd/system/foobar.service.d/foobar.conf << EOF
[Service]
Restart=always
RestartSec=30
EOF

  525  cat > /etc/fstab << "EOF"
# Begin /etc/fstab
# file-system mount-point type options dump fsck
# order
/dev/sdb1 / ext4 defaults 1 1
/dev/sdb2 swap swap pri=1 0 0
proc /proc proc nosuid,noexec,nodev 0 0
sysfs /sys sysfs nosuid,noexec,nodev 0 0
devpts /dev/pts devpts gid=5,mode=620 0 0
tmpfs /run tmpfs defaults 0 0
devtmpfs /dev devtmpfs mode=0755,nosuid 0 0
# End /etc/fstab
EOF

  526  cd /sources/
  527  ls
  528  tar xf linux-3.19.tar.xz 
  529  cd linux-3.19
  530  make mrproper
  531  make LANG=$LC_ALL LC_ALL= menuconfig
  532   vi /etc/fstab 
  533  make LANG=$LC_ALL LC_ALL= menuconfig
  534   vi /etc/fstab 
  535  make LANG=$LC_ALL LC_ALL= menuconfig
  536  make LANG=$LC_ALL LC_ALL= menuconfig
  537  make LANG=$LC_ALL LC_ALL= menuconfig
  538  make
  539  make modules_install
  540  cp -v arch/x86/boot/bzImage /boot/vmlinuz-3.19-lfs-7.7-systemd
  541  cp -v System.map /boot/System.map-3.19
  542  cp -v .config /boot/config-3.19
  543  install -d /usr/share/doc/linux-3.19
  544  cp -r Documentation/* /usr/share/doc/linux-3.19
  545  install -v -m755 -d /etc/modprobe.d
  546  cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf
install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true
# End /etc/modprobe.d/usb.conf
EOF

  547  cd ..
  548  rm -rf linux-3.19
  549  whoami
  550  ls /
  551  grub-install /dev/sdb
  552  cat > /boot/grub/grub.cfg << "EOF"
set default=0
set timeout=8
insmod ext4
insmod ext2
set root=(hd1,1)
menuentry "GNU/Linux siming,linux3-19-lfs-systemd"{
linux /boot/vmlinuz-3.19-lfs-7.7-systemd root=/dev/sdb1 ro
}
EOF

  553  vi /boot/grub/grub.cfg 
  554  cat /boot/grub/grub.cfg 
  555  grub-mkconfig -o /boot/grub/grub2.cfg
  556  cat /boot/grub/grub2.cfg 
  557  rm -rf /boot/grub/grub.cfg 
  558  rm -rf /boot/grub/grub2.cfg 
  559  grub-mkconfig -o /boot/grub/grub.cfg
  560  cat /boot/grub/grub.cfg 
  561  cat > /etc/os-release << "EOF"
NAME="LFS7-7--siming"
VERSION="7.7-systemd"
ID=lfs
PRETTY_NAME="Linux From Scratch 7.7-systemd"
EOF

  562  echo 7.7-systemd > /etc/lfs-release
  563  cat > /etc/lsb-release << "EOF"
DISTRIB_ID="LFS 7-7"
DISTRIB_RELEASE="7-7systemd"
DISTRIB_CODENAME="siming"
DISTRIB_DESCRIPTION="LFS-ZSM"
EOF

  564  history
  565  ls
  566  history >> LFSroot.txt
