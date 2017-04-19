# NOTE: link the curent working copy of the code to lmon.c for compiling
CFLAGS=-g -O3 -Wall -D JFS -D GETUSER -D LARGEMEM
# CFLAGS=-g -O2 -D JFS -D GETUSER -Wall -D POWER
#CFLAGS=-g -D JFS -D GETUSER 
LDFLAGS=-lncurses -lm -g
FILE=lmon.c

#### POWER 
#### POWER Red Hat Enterprise Linux - RHEL
nmon_power_rhel3: $(FILE)
	cc -o nmon_power_rhel3 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER

nmon_power_rhel4: $(FILE)
	gcc -o nmon_power_rhel4 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER

nmon_power_rhel5: $(FILE)
	gcc -o nmon_power_rhel5 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER

nmon_power_rhel55: $(FILE)
	gcc -o nmon_power_rhel55 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18

nmon_power_rhel65: $(FILE)
	gcc -o nmon_power_rhel55 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18

nmon_power_rhel7: $(FILE)
	gcc -o nmon_power_rhel7 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D RHEL7

nmon_power_rhel71BE: $(FILE)
	gcc -o nmon_power_rhel71BE $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D RHEL7

nmon_power_rhel71LE: $(FILE)
	gcc -o nmon_power_rhel71LE $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D RHEL7

#### POWER SuSE Linux Enterprise Server - SLES
nmon_power_sles12: $(FILE)
	cc -o nmon_power_sles12 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D SLES12

nmon_power_sles113: $(FILE)
	cc -o nmon_power_sles113 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D SLES113

nmon_power_sles112: $(FILE)
	cc -o nmon_power_sles112 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 

nmon_power_sles11: $(FILE)
	cc -o nmon_power_sles11 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 

nmon_power_sles10: $(FILE)
	cc -o nmon_power_sles10 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER

nmon_power_sles9: $(FILE)
	cc -o nmon_power_sles9 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER

nmon_power_sles8: $(FILE)
	cc -o nmon_power_sles8 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER


#### POWER Canonical Ubuntu
nmon_power_ubuntu140403: $(FILE)
	gcc -o nmon_power_ubuntu140403 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

nmon_power_ubuntu1410: $(FILE)
	gcc -o nmon_power_ubuntu1410 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

nmon_power_ubuntu1504: $(FILE)
	gcc -o nmon_power_ubuntu1504 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

nmon_power_ubuntu1510: $(FILE)
	gcc -o nmon_power_ubuntu1510 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

nmon_power_ubuntu1604: $(FILE)
	gcc -o nmon_power_ubuntu1604 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

nmon_power_ubuntu1704: $(FILE)
	gcc -o nmon_power_ubuntu1704 $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D UBUNTU

#### POWER Canonical Ubuntu WITH NVIDIA GPU
nmon_power_ubuntu140403_gpu: $(FILE)
	gcc -o nmon_power_ubuntu140403_gpu $(FILE) $(CFLAGS) $(LDFLAGS) -D POWER -D KERNEL_2_6_18 -D NVIDIA_GPU /usr/lib/nvidia-352/libnvidia-ml.so -D UBUNTU

#### MAINFRAME 
#### MAINFRAME SLES
nmon_mainframe_sles10: $(FILE)
	cc -o nmon_mainframe_sles10 $(FILE) $(CFLAGS) $(LDFLAGS) -D MAINFRAME

nmon_mainframe_sles112: $(FILE)
	cc -o nmon_mainframe_sles112 $(FILE) $(CFLAGS) $(LDFLAGS) -D MAINFRAME -D KERNEL_2_6_18 -D SLES113 

nmon_mainframe_rhel7: $(FILE)
	cc -o nmon_mainframe_rhel7 $(FILE) $(CFLAGS) $(LDFLAGS) -D MAINFRAME -D KERNEL_2_6_18 -D RHEL7 


### Raspbery pi
nmon_arm_raspian:  $(FILE)
	cc -o nmon_arm_raspian $(FILE) $(CFLAGS) $(LDFLAGS) -D ARM  -D KERNEL_2_6_18

nmon_arm_ubuntu1510:  $(FILE)
	cc -o nmon_arm_ubuntu1510 $(FILE) $(CFLAGS) $(LDFLAGS) -D ARM  -D KERNEL_2_6_18 -D UBUNTU


#### AMD and Intel 32 Bit and 64 Bit (_64)
#### SuSE Linux Enterprise Server - SLES
nmon_x86_sles8:  $(FILE)
	cc -o nmon_x86_sles8 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_sles9:  $(FILE)
	cc -o nmon_x86_sles9 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_sles10:  $(FILE)
	cc -o nmon_x86_sles10 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_sles113:  $(FILE)
	cc -o nmon_x86_sles113 $(FILE) $(CFLAGS) $(LDFLAGS)  -D KERNEL_2_6_18 -D X86 -D SLES113

nmon_x86_sles114:  $(FILE)
	cc -o nmon_x86_sles114 $(FILE) $(CFLAGS) $(LDFLAGS)  -D KERNEL_2_6_18 -D X86 -D SLES113

nmon_x86_sles12:  $(FILE)
	cc -o nmon_x86_sles12 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D SLES12

### OpenSUSE
nmon_x86_opensuse10:  $(FILE)
	cc -o nmon_x86_opensuse10 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_64_opensuse11:  $(FILE)
	cc -o nmon_x86_64_opensuse11 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_64_opensuse13:  $(FILE)
	cc -o nmon_x86_64_opensuse13 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86


#### Red Hat RHEL
nmon_x86_rhel6:  $(FILE)
	cc -o nmon_x86_rhel6 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_rhel66:  $(FILE)
	cc -o nmon_x86_rhel66 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_rhel70:  $(FILE)
	cc -o nmon_x86_rhel70 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

nmon_x86_rhel71:  $(FILE)
	cc -o nmon_x86_rhel71 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

nmon_x86_rhel72:  $(FILE)
	cc -o nmon_x86_rhel72 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

nmon_x86_rhel45:  $(FILE)
	cc -o nmon_x86_rhel45 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_rhel52:  $(FILE)
	cc -o nmon_x86_rhel52 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_rhel54:  $(FILE)
	gcc44 -o nmon_x86_rhel54 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_rhel58:  $(FILE)
	gcc -o nmon_x86_rhel58 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86 -D KERNEL_2_6_18 

nmon_x86_rhel4:  $(FILE)
	cc -o nmon_x86_rhel4 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_rhel3:  $(FILE)
	cc -o nmon_x86_rhel3 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_redhat9:  $(FILE)
	cc -o nmon_x86_redhat9 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_rhel2:
	cc -o nmon_x86_rhel2 $(FILE) $(CFLAGS) $(LDFLAGS) -D REREAD=1 -D X86


### Debian
nmon_x86_debian3:  $(FILE)
	cc -o nmon_x86_debian3 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

### x86 Red Hat Fedora
nmon_x86_fedora10: 
	cc -s -o nmon_x86_fedora10 $(FILE) $(CFLAGS) $(LDFLAGS) -D X86

nmon_x86_fedora23: 
	cc -s -o nmon_x86_fedora23 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86


#### x86 Oracle Linux (ol) for x86_64
nmon_x86_64_ol73: lmon.c
	cc -o nmon_x86_64_ol73 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol72: lmon.c
	cc -o nmon_x86_64_ol72 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol71: lmon.c
	cc -o nmon_x86_64_ol71 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol70: lmon.c
	cc -o nmon_x86_64_ol70 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol67: lmon.c
	cc -o nmon_x86_64_ol67 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol66: lmon.c
	cc -o nmon_x86_64_ol66 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol65: lmon.c
	cc -o nmon_x86_64_ol65 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol64: lmon.c
	cc -o nmon_x86_64_ol64 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol511: lmon.c
	cc -o nmon_x86_64_ol511 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ol510: lmon.c
	cc -o nmon_x86_64_ol510 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

#### x86 Oracle Linux (ol) for x86

nmon_x86_ol68: lmon.c
	cc -o nmon_x86_ol68 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol67: lmon.c
	cc -o nmon_x86_ol67 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol66: lmon.c
	cc -o nmon_x86_ol66 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol65: lmon.c
	cc -o nmon_x86_ol65 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol64: lmon.c
	cc -o nmon_x86_ol64 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol511: lmon.c
	cc -o nmon_x86_ol511 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_ol510: lmon.c
	cc -o nmon_x86_ol510 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

#### x86 for CentOS x86_64

nmon_x86_64_centos64:  $(FILE)
	cc -o nmon_x86_64_centos64 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_64_centos65:  $(FILE)
	cc -o nmon_x86_64_centos65 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_64_centos66:  $(FILE)
	cc -o nmon_x86_64_centos66 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_64_centos67:  $(FILE)
	cc -o nmon_x86_64_centos67 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_64_centos70:  $(FILE)
	cc -o nmon_x86_64_centos70 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

nmon_x86_64_centos71:  $(FILE)
	cc -o nmon_x86_64_centos71 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

nmon_x86_64_centos72:  $(FILE)
	cc -o nmon_x86_64_centos72 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL7

#### x86 for AWS AMI x86_64

nmon_x86_64_ami_201703:  $(FILE)
	cc -o nmon_x86_64_ami_201703 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_ami_201609:  $(FILE)
	cc -o nmon_x86_64_ami_201609 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

#### x86 for CentOS x86

nmon_x86_centos64:  $(FILE)
	cc -o nmon_x86_centos64 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_centos65:  $(FILE)
	cc -o nmon_x86_centos65 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_centos66:  $(FILE)
	cc -o nmon_x86_centos66 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

nmon_x86_centos67:  $(FILE)
	cc -o nmon_x86_centos67 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18  -D X86 -D RHEL6

#### x86 Canonical Ubuntu x86_64

nmon_x86_64_ubuntu1204: lmon.c
	cc -o nmon_x86_64_ubuntu1204 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_64_ubuntu1404: lmon.c
	cc -o nmon_x86_64_ubuntu1404 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_64_ubuntu1510: lmon.c
	cc -o nmon_x86_64_ubuntu1510 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_64_ubuntu1604: lmon.c
	cc -o nmon_x86_64_ubuntu1604 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_64_ubuntu1610: lmon.c
	cc -o nmon_x86_64_ubuntu1610 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

#### x86 Canonical Ubuntu x86

nmon_x86_ubuntu1204: lmon.c
	cc -o nmon_x86_ubuntu1204 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_ubuntu1404: lmon.c
	cc -o nmon_x86_ubuntu1404 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

nmon_x86_ubuntu1610: lmon.c
	cc -o nmon_x86_ubuntu1610 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86 -D UBUNTU

#### x86 Debian x86_64

nmon_x86_64_debian82: lmon.c
	cc -o nmon_x86_64_debian82 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_debian81: lmon.c
	cc -o nmon_x86_64_debian81 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_debian80: lmon.c
	cc -o nmon_x86_64_debian80 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_debian79: lmon.c
	cc -o nmon_x86_64_debian79 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_64_debian78: lmon.c
	cc -o nmon_x86_64_debian78 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

#### x86 Debian x86

nmon_x86_debian82: lmon.c
	cc -o nmon_x86_debian82 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_debian81: lmon.c
	cc -o nmon_x86_debian81 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_debian80: lmon.c
	cc -o nmon_x86_debian80 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_debian79: lmon.c
	cc -o nmon_x86_debian79 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

nmon_x86_debian78: lmon.c
	cc -o nmon_x86_debian78 $(FILE) $(CFLAGS) $(LDFLAGS) -D KERNEL_2_6_18 -D X86

