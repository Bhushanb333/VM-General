#!/bin/bash
bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
pink=$(tput setaf 5)
reset=$(tput sgr0)

  
echo -e "${bold}${pink}------RHEL 7 - Initial Setup------${reset}"

# Ensure mounting of cramfs filesystems is disabled
rhel_1_1_1_1="$(modprobe -n -v cramfs | grep "^install /bin/true$" || echo "install cramfs /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_1=$?
lsmod | egrep "^cramfs\s" && rmmod cramfs
if [[ "$rhel_1_1_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.1${reset} Ensure mounting of cramfs filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of cramfs filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.1${reset} Ensure mounting of cramfs filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of cramfs filesystems is disabled"
fi

# Ensure mounting of freevxfs filesystems is disabled
rhel_1_1_1_2="$(modprobe -n -v freevxfs | grep "^install /bin/true$" || echo "install freevxfs /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_2=$?
lsmod | egrep "^freevxfs\s" && rmmod freevxfs
if [[ "$rhel_1_1_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.2${reset} Ensure mounting of freevxfs filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of freevxfs filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.2${reset} Ensure mounting of freevxfs filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of freevxfs filesystems is disabled"
fi

# Ensure mounting of jffs2 filesystems is disabled
rhel_1_1_1_3="$(modprobe -n -v jffs2 | grep "^install /bin/true$" || echo "install jffs2 /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_3=$?
lsmod | egrep "^jffs2\s" && rmmod jffs2
if [[ "$rhel_1_1_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.3${reset} Ensure mounting of jffs2 filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of jffs2 filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.3${reset} Ensure mounting of jffs2 filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of jffs2 filesystems is disabled"
fi

# Ensure mounting of hfs filesystems is disabled
rhel_1_1_1_4="$(modprobe -n -v hfs | grep "^install /bin/true$" || echo "install hfs /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_4=$?
lsmod | egrep "^hfs\s" && rmmod hfs
if [[ "$rhel_1_1_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.4${reset} Ensure mounting of hfs filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of hfs filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.4${reset} Ensure mounting of hfs filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of hfs filesystems is disabled"
fi

# Ensure mounting of hfsplus filesystems is disabled
rhel_1_1_1_5="$(modprobe -n -v hfsplus | grep "^install /bin/true$" || echo "install hfsplus /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_5=$?
lsmod | egrep "^hfsplus\s" && rmmod hfsplus
if [[ "$rhel_1_1_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.5${reset} Ensure mounting of hfsplus filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of hfsplus filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.5${reset} Ensure mounting of hfsplus filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of hfsplus filesystems is disabled"
fi

# Ensure mounting of squashfs filesystems is disabled
rhel_1_1_1_6="$(modprobe -n -v squashfs | grep "^install /bin/true$" || echo "install squashfs /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_6=$?
lsmod | egrep "^squashfs\s" && rmmod squashfs
if [[ "$rhel_1_1_1_6" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.6${reset} Ensure mounting of squashfs filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of squashfs filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.6${reset} Ensure mounting of squashfs filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of squashfs filesystems is disabled"
fi

# Ensure mounting of udf filesystems is disabled
rhel_1_1_1_7="$(modprobe -n -v udf | grep "^install /bin/true$" || echo "install udf /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_7=$?
lsmod | egrep "^udf\s" && rmmod udf
if [[ "$rhel_1_1_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.7${reset} Ensure mounting of udf filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of udf filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.7${reset} Ensure mounting of udf filesystems is disabled\n${bold}${yeloow}UnableToRemidiate${reset} Ensure mounting of udf filesystems is disabled"
fi

# Ensure mounting of FAT filesystems is disabled
rhel_1_1_1_8="$(modprobe -n -v vfat | grep "^install /bin/true$" || echo "install vfat /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_1_1_1_8=$?
lsmod | egrep "^vfat\s" && rmmod vfat
if [[ "$rhel_1_1_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.1.8${reset} Ensure mounting of FAT filesystems is disabled\n${bold}${green}Remediated${reset} Ensure mounting of FAT filesystems is disabled"
else
  echo -e "${bold}${red}1.1.1.8${reset} Ensure mounting of FAT filesystems is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure mounting of FAT filesystems is disabled"
fi

# Ensure sticky bit is set on all world-writable directories
rhel_1_1_21="$(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d -perm -0002 2>/dev/null | xargs chmod a+t)"
rhel_1_1_21=$?
if [[ "$rhel_1_1_21" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.21${reset} Ensure sticky bit is set on all world-writable directories\n${bold}${green}Remediated${reset} Ensure sticky bit is set on all world-writable directories"
else
  echo -e "${bold}${red}1.1.21${reset} Ensure sticky bit is set on all world-writable directories\n${bold}${yellow}UnableToRemidiate${reset} Ensure sticky bit is set on all world-writable directories"
fi

# Disable Automounting
rhel_1_1_22="$(systemctl disable autofs.service)"
rhel_1_1_22=$?
if [[ "$rhel_1_1_22" -eq 0 ]]; then
  echo -e "${bold}${red}1.1.22${reset} Disable Automounting\n${bold}${green}Remediated${reset} Disable Automounting"
else
  echo -e "${bold}${red}1.1.22${reset} Disable Automounting\n${bold}${yellow}UnableToRemidiate${reset} Disable Automounting"
fi

# Ensure gpgcheck is globally activated
rhel_1_2_2="$(egrep -q "^(\s*)gpgcheck\s*=\s*\S+(\s*#.*)?\s*$" /etc/yum.conf && sed -ri "s/^(\s*)gpgcheck\s*=\s*\S+(\s*#.*)?\s*$/\1gpgcheck=1\2/" /etc/yum.conf || echo "gpgcheck=1" >> /etc/yum.conf)"
rhel_1_2_2=$?
rhel_1_2_2_temp=0
for file in /etc/yum.repos.d/*; do
  rhel_1_2_2_temp_2="$(egrep -q "^(\s*)gpgcheck\s*=\s*\S+(\s*#.*)?\s*$" $file && sed -ri "s/^(\s*)gpgcheck\s*=\s*\S+(\s*#.*)?\s*$/\1gpgcheck=1\2/" $file || echo "gpgcheck=1" >> $file)"
  rhel_1_2_2_temp_2=$?
  if [[ "$rhel_1_2_2_temp_2" -eq 0 ]]; then
    ((rhel_1_2_2_temp=rhel_1_2_2_temp+1))
  fi
done
rhel_1_2_2_temp_2="$( ls -1q /etc/yum.repos.d/* | wc -l)"
if [[ "$rhel_1_2_2" -eq 0 ]] && [[ "$rhel_1_2_2_temp" -eq "rhel_1_2_2_temp_2" ]]; then
  echo -e "${bold}${red}1.2.2${reset} Ensure gpgcheck is globally activated\n${bold}${green}Remediated${reset} Ensure gpgcheck is globally activated"
else
  echo -e "${bold}${red}1.2.2${reset} Ensure gpgcheck is globally activated\n${bold}${yellow}UnableToRemidiate${reset} Ensure gpgcheck is globally activated"
fi

# Ensure AIDE is installed
rhel_1_3_1="$(rpm -q aide || yum -y install aide)"
rhel_1_3_1=$?
if [[ "$rhel_1_3_1" -eq 0 ]]; then
  echo -e "${bold}${red}1.3.1${reset} Ensure AIDE is installed\n${bold}${green}Remediated${reset} Ensure AIDE is installed"
else
  echo -e "${bold}${yellow}1.3.1${reset} Ensure AIDE is installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure AIDE is installed"
fi

# Ensure filesystem integrity is regularly checked
rhel_1_3_2="$(crontab -u root -l; crontab -u root -l | egrep -q "^0 5 \* \* \* /usr/sbin/aide --check$" || echo "0 5 * * * /usr/sbin/aide --check" ) | crontab -u root -)"
rhel_1_3_2=$?
if [[ "$rhel_1_3_2" -eq 0 ]]; then
  echo -e "${bold}${red}1.3.2${reset} Ensure filesystem integrity is regularly checked\n${bold}${green}Remediated${reset} Ensure filesystem integrity is regularly checked"
else
  echo -e "${bold}${red}1.3.2${reset} Ensure filesystem integrity is regularly checked\n${bold}${yeloow}UnableToRemidiate${reset} Ensure filesystem integrity is regularly checked"
fi

# Ensure permissions on bootloader config are configured
rhel_1_4_1="$(chmod g-r-w-x,o-r-w-x /boot/grub2/grub.cfg)"
rhel_1_4_1=$?
if [[ "$rhel_1_4_1" -eq 0 ]]; then
  echo -e "${bold}${red}1.4.1${reset} Ensure permissions on bootloader config are configured\n${bold}${green}Remediated${reset} Ensure permissions on bootloader config are configured"
else
  echo -e "${bold}${red}1.4.1${reset} Ensure permissions on bootloader config are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on bootloader config are configured"
fi

# Ensure authentication required for single user mode
rhel_1_4_3_rule1="$(echo ExecStart=-/bin/sh -c "/sbin/sulogin; /usr/bin/systemctl --fail --no-block default" >> /usr/lib/systemd/system/rescue.service)"
rhel_1_4_3_rule1=$?
rhel_1_4_3_rule2="$(echo ExecStart=-/bin/sh -c "/sbin/sulogin; /usr/bin/systemctl --fail --no-block default" >> /usr/lib/systemd/system/emergency.service)"
rhel_1_4_3_rule1=$?
if [[ "$rhel_1_4_3_rule1" -eq 0 ]] && [[ "$rhel_1_4_3_rule2" -eq 0 ]]; then
  echo -e "${bold}${red}1.4.3${reset} Ensure authentication required for single user mode\n${bold}${green}Remediated${reset} Ensure authentication required for single user mode"
else
  echo -e "${bold}${red}1.4.3${reset} Ensure authentication required for single user mode\n${bold}${yellow}UnableToRemidiate${reset} Ensure authentication required for single user mode"
fi

# Ensure core dumps are restricted
rhel_1_5_1_temp_1="$(echo "* hard core 0" >> /etc/security/limits.conf)"
rhel_1_5_1_temp_1=$?
rhel_1_5_1_temp_2="$(echo "* hard core 0" >> /etc/security/limits.d/*)"
rhel_1_5_1_temp_2=$?
rhel_1_5_1_temp_3="$(echo "fs.suid_dumpable = 0" >> /etc/sysctl.conf)"
rhel_1_5_1_temp_3=$?
rhel_1_5_1_temp_4="$(echo "fs.suid_dumpable = 0" >> /etc/sysctl.d/*)"
rhel_1_5_1_temp_4=$?
rhel_1_5_1_temp_5="$(sysctl -w fs.suid_dumpable=0)"
rhel_1_5_1_temp_5=$?
if [[ "$rhel_1_5_1_temp_1" -eq 0 ]] && [[ "$rhel_1_5_1_temp_2" -eq 0 ]] && [[ "$rhel_1_5_1_temp_3" -eq 0 ]] && [[ "$rhel_1_5_1_temp_4" -eq 0 ]] && [[ "$rhel_1_5_1_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}1.5.1${reset} Ensure core dumps are restricted\n${bold}${green}Remediated${reset} Ensure core dumps are restricted"
else
  echo -e "${bold}${red}1.5.1${reset} Ensure core dumps are restricted\n${bold}${yellow}UnableToRemidiate${reset} Ensure core dumps are restricted"
fi

# Ensure address space layout randomization (ASLR) is enabled
rhel_1_5_3_temp_1="$(echo "kernel.randomize_va_space = 2" >> /etc/sysctl.conf)"
rhel_1_5_3_temp_1=$?
rhel_1_5_3_temp_2="$(echo "kernel.randomize_va_space = 2" >> /etc/sysctl.d/*)"
rhel_1_5_3_temp_2=$?
rhel_1_5_3_temp_3="$(sysctl -w kernel.randomize_va_space=2)"
rhel_1_5_3_temp_3=$?
if [[ "$rhel_1_5_3_temp_1" -eq 0 ]] && [[ "$rhel_1_5_3_temp_2" -eq 0 ]] && [[ "$rhel_1_5_3_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}1.5.3${reset} Ensure address space layout randomization (ASLR) is enabled\n${bold}${green}Remediated${reset} Ensure address space layout randomization (ASLR) is enabled"
else
  echo -e "${bold}${red}1.5.3${reset} Ensure address space layout randomization (ASLR) is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure address space layout randomization (ASLR) is enabled"
fi

# Ensure prelink is disabled
rhel_1_5_4="$(rpm -q prelink && yum -y remove prelink)"
rhel_1_5_4=$?
if [[ "$rhel_1_5_4" -eq 0 ]]; then
  echo -e "${bold}${red}1.5.4${reset} Ensure prelink is disabled\n${bold}${green}Remediated${reset} Ensure prelink is disabled"
else
  echo -e "${bold}${red}1.5.4${reset} Ensure prelink is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure prelink is disabled"
fi

# Ensure message of the day is configured properly
rhel_1_7_1_1="$(sed -ri 's/(\\v|\\r|\\m|\\s)//g' /etc/motd)"
rhel_1_7_1_1=$?
if [[ "$rhel_1_7_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.1${reset} Ensure message of the day is configured properly\n${bold}${green}Remediated${reset} Ensure message of the day is configured properly"
else
  echo -e "${bold}${red}1.7.1.1${reset} Ensure message of the day is configured properly\n${bold}${yellow}UnableToRemidiate${reset} Ensure message of the day is configured properly"
fi

# Ensure local login warning banner is configured properly
rhel_1_7_1_2="$(echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue)"
rhel_1_7_1_2=$?
if [[ "$rhel_1_7_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.2${reset} Ensure local login warning banner is configured properly\n${bold}${green}Remediated${reset} Ensure local login warning banner is configured properly"
else
  echo -e "${bold}${red}1.7.1.2${reset} Ensure local login warning banner is configured properly\n${bold}${yellow}UnableToRemidiate${reset} Ensure local login warning banner is configured properly"
fi

# Ensure remote login warning banner is configured properly
rhel_1_7_1_3="$(echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue.net)"
rhel_1_7_1_3=$?
if [[ "$rhel_1_7_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.3${reset} Ensure remote login warning banner is configured properly\n${bold}${green}Remediated${reset} Ensure remote login warning banner is configured properly"
else
  echo -e "${bold}${red}1.7.1.3${reset} Ensure remote login warning banner is configured properly\n${bold}${yellow}UnableToRemidiate${reset} Ensure remote login warning banner is configured properly"
fi

# Ensure permissions on /etc/motd are configured
rhel_1_7_1_4="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/motd)"
rhel_1_7_1_4=$?
if [[ "$rhel_1_7_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.4${reset} Ensure permissions on /etc/motd are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/motd are configured"
else
  echo -e "${bold}${red}1.7.1.4${reset} Ensure permissions on /etc/motd are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/motd are configured"
fi

# Ensure permissions on /etc/issue are configured
rhel_1_7_1_5="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/issue)"
rhel_1_7_1_5=$?
if [[ "$rhel_1_7_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.5${reset} Ensure permissions on /etc/issue are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/issue are configured"
else
  echo -e "${bold}${red}1.7.1.5${reset} Ensure permissions on /etc/issue are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/issue are configured"
fi

# Ensure permissions on /etc/issue.net are configured
rhel_1_7_1_6="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/issue.net)"
rhel_1_7_1_6=$?
if [[ "$rhel_1_7_1_6" -eq 0 ]]; then
  echo -e "${bold}${red}1.7.1.6${reset} Ensure permissions on /etc/issue.net are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/issue.net are configured"
else
  echo -e "${bold}${red}1.7.1.6${reset} Ensure permissions on /etc/issue.net are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/issue.net are configured"
fi

# Ensure SELinux is installed
rhel_1_6_2="$(rpm -q libselinux || yum -y install libselinux)"
rhel_1_6_2=$?
if [[ "$rhel_1_6_2" -eq 0 ]]; then
  echo -e "${bold}${red}1.6.2${reset} Ensure SELinux is installed\n${bold}${green}Remediated${reset} Ensure SELinux is installed"
else
  echo -e "${bold}${red}1.6.2${reset} Ensure SELinux is installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure SELinux is installed"
fi

# Ensure SETroubleshoot is not installed
rhel_1_6_1_4="$(rpm -q setroubleshoot && yum -y remove setroubleshoot)"
rhel_1_6_1_4=$?
if [[ "$rhel_1_6_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}1.6.1.4${reset} Ensure SETroubleshoot is not installed\n${bold}${green}Remediated${reset} Ensure SETroubleshoot is not installed"
else
  echo -e "${bold}${red}1.6.1.4${reset} Ensure SETroubleshoot is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure SETroubleshoot is not installed"
fi

# Ensure the MCS Translation Service (mcstrans) is not installed
rhel_1_6_1_5="$(rpm -q mcstrans && yum -y remove mcstrans)"
rhel_1_6_1_5=$?
if [[ "$rhel_1_6_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}1.6.1.5${reset} Ensure the MCS Translation Service (mcstrans) is not installed\n${bold}${green}Remediated${reset} Ensure the MCS Translation Service (mcstrans) is not installed"
else
  echo -e "${bold}${red}1.6.1.5${reset} Ensure the MCS Translation Service (mcstrans) is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure the MCS Translation Service (mcstrans) is not installed"
fi

echo -e "${bold}${pink}------RHEL 7 - Services------${reset}"

# Ensure chargen services are not enabled
rhel_2_1_1="$(chkconfig chargen off)"
rhel_2_1_1=$?
if [[ "$rhel_2_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.1${reset} Ensure chargen services are not enabled\n${bold}${green}Remediated${reset} Ensure chargen services are not enabled"
else
  echo -e "${bold}${red}2.1.1${reset} Ensure chargen services are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure chargen services are not enabled"
fi 

# Ensure daytime services are not enabled
rhel_2_1_2="$(chkconfig daytime off)"
rhel_2_1_2=$?
if [[ "$rhel_2_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.2${reset} Ensure daytime services are not enabled\n${bold}${green}Remediated${reset} Ensure daytime services are not enabled"
else
  echo -e "${bold}${red}2.1.2${reset} Ensure daytime services are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure daytime services are not enabled"
fi

# Ensure discard services are not enabled
rhel_2_1_3="$(chkconfig discard off)"
rhel_2_1_3=$?
if [[ "$rhel_2_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.3${reset} Ensure discard services are not enabled\n${bold}${green}Remediated${reset} Ensure discard services are not enabled"
else
  echo -e "${bold}${red}2.1.3${reset} Ensure discard services are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure discard services are not enabled"
fi

# Ensure echo services are not enabled
rhel_2_1_4="$(chkconfig echo off)"
rhel_2_1_4=$?
if [[ "$rhel_2_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.4${reset} Ensure echo services are not enabled\n${bold}${green}Remediated${reset} Ensure echo services are not enabled"
else
  echo -e "${bold}${red}2.1.4${reset} Ensure echo services are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure echo services are not enabled"
fi

# Ensure time services are not enabled
rhel_2_1_5="$(chkconfig time off)"
rhel_2_1_5=$?
if [[ "$rhel_2_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.5${reset} Ensure time services are not enabled\n${bold}${green}Remediated${reset} Ensure time services are not enabled"
else
  echo -e "${bold}${red}2.1.5${reset} Ensure time services are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure time services are not enabled"
fi

# Ensure tftp server is not enabled
rhel_2_1_6="$(chkconfig tftp off)"
rhel_2_1_6=$?
systemctl disable tftp.socket.service
if [[ "$rhel_2_1_6" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.6${reset} Ensure tftp server is not enabled\n${bold}${green}Remediated${reset} Ensure tftp server is not enabled"
else
  echo -e "${bold}${red}2.1.6${reset} Ensure tftp server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure tftp server is not enabled"
fi

# Ensure xinetd is not enabled
rhel_2_1_7="$(systemctl disable xinetd.service)"
rhel_2_1_7=$?
if [[ "$rhel_2_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}2.1.7${reset} Ensure xinetd is not enabled\n${bold}${green}Remediated${reset} Ensure xinetd is not enabled"
else
  echo -e "${bold}${red}2.1.7${reset} Ensure xinetd is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure xinetd is not enabled"
fi

# Ensure time synchronization is in use
rhel_2_2_1_1="$(rpm -q ntp || rpm -q chrony || yum -y install chrony)"
rhel_2_2_1_1=$?
if [[ "$rhel_2_2_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.1.1${reset} Ensure time synchronization is in use\n${bold}${green}Remediated${reset} Ensure time synchronization is in use"
else
  echo -e "${bold}${red}2.2.1.1${reset} Ensure time synchronization is in use\n${bold}${yellow}UnableToRemidiate${reset} Ensure time synchronization is in use"
fi

# Ensure ntp is configured
if rpm -q ntp >/dev/null; then
  rhel_2_2_1_1_temp_1="$(echo "restrict -4 default kod nomodify notrap nopeer noquery" >> /etc/ntp.conf)"
  rhel_2_2_1_1_temp_1=$?
  rhel_2_2_1_1_temp_2="$(echo "restrict -6 default kod nomodify notrap nopeer noquery" >> /etc/ntp.conf)"
  rhel_2_2_1_1_temp_2=$?
  rhel_2_2_1_1_temp_3="$(echo OPTIONS=\"-u ntp:ntp\" >> /etc/sysconfig/ntpd)"
  rhel_2_2_1_1_temp_3=$?
  if [[ "$rhel_2_2_1_1_temp_1" -eq 0 ]] && [[ "$rhel_2_2_1_1_temp_2" -eq 0 ]] && [[ "$rhel_2_2_1_1_temp_3" -eq 0 ]]; then
    echo -e "${bold}${red}2.2.1.2${reset} Ensure ntp is configured\n${bold}${green}Remediated${reset} Ensure ntp is configured"
  else
    echo -e "${bold}${red}2.2.1.2${reset} Ensure ntp is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure ntp is configured"
  fi
else
  yum install ntp -y && systemctl enable ntpd
  rhel_2_2_1_1_temp_1="$(echo "restrict -4 default kod nomodify notrap nopeer noquery" >> /etc/ntp.conf)"
  rhel_2_2_1_1_temp_1=$?
  rhel_2_2_1_1_temp_2="$(echo "restrict -6 default kod nomodify notrap nopeer noquery" >> /etc/ntp.conf)"
  rhel_2_2_1_1_temp_2=$?
  rhel_2_2_1_1_temp_3="$(echo OPTIONS=\"-u ntp:ntp\" >> /etc/sysconfig/ntpd)"
  rhel_2_2_1_1_temp_3=$?
  if [[ "$rhel_2_2_1_1_temp_1" -eq 0 ]] && [[ "$rhel_2_2_1_1_temp_2" -eq 0 ]] && [[ "$rhel_2_2_1_1_temp_3" -eq 0 ]]; then
    echo -e "${bold}${red}2.2.1.2${reset} Ensure ntp is configured\n${bold}${green}Remediated${reset} Ensure ntp is configured"
  else
    echo -e "${bold}${red}2.2.1.2${reset} Ensure ntp is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure ntp is configured"
  fi
fi

# Ensure chrony is configured
if rpm -q chrony >/dev/null; then
  rhel_2_2_1_3="$(echo OPTIONS=\"-u chrony\" >> /etc/sysconfig/chronyd)"
  rhel_2_2_1_3=$?
  if [[ "$rhel_2_2_1_3" -eq 0 ]]; then
    echo -e "${bold}${red}2.2.1.3${reset} Ensure chrony is configured\n${bold}${green}Remediated${reset} Ensure chrony is configured"
  else
    echo -e "${bold}${red}2.2.1.3${reset} Ensure chrony is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure chrony is configured"
  fi
else
  yum install chrony -y && systemctl start chronyd && systemctl enable chronyd
  rhel_2_2_1_3="$(echo OPTIONS=\"-u chrony\" >> /etc/sysconfig/chronyd)"
  rhel_2_2_1_3=$?
  if [[ "$rhel_2_2_1_3" -eq 0 ]]; then
    echo -e "${bold}${red}2.2.1.3${reset} Ensure chrony is configured\n${bold}${green}Remediated${reset} Ensure chrony is configured"
  else
    echo -e "${bold}${red}2.2.1.3${reset} Ensure chrony is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure chrony is configured"
  fi
fi

# Ensure X Window System is not installed
rhel_2_2_2="$(yum -y remove xorg-x11*)"
rhel_2_2_2=$?
if [[ "$rhel_2_2_2" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.2${reset} Ensure X Window System is not installed\n${bold}${green}Remediated${reset} Ensure X Window System is not installed"
else
  echo -e "${bold}${red}2.2.2${reset} Ensure X Window System is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure X Window System is not installed"
fi

# Ensure Avahi Server is not enabled
rhel_2_2_3="$(systemctl disable avahi-daemon.service || yum erase avahi -y)"
rhel_2_2_3=$?
if [[ "$rhel_2_2_3" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.3${reset} Ensure Avahi Server is not enabled\n${bold}${green}Remediated${reset} Ensure Avahi Server is not enabled"
else
  echo -e "${bold}${red}2.2.3${reset} Ensure Avahi Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure Avahi Server is not enabled"
fi

# Ensure CUPS is not enabled
rhel_2_2_4="$(systemctl disable cups.service  || yum erase cups -y)"
rhel_2_2_4=$?
if [[ "$rhel_2_2_4" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.4${reset} Ensure CUPS is not enabled\n${bold}${green}Remediated${reset} Ensure CUPS is not enabled"
else
  echo -e "${bold}${red}2.2.4${reset} Ensure CUPS is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure CUPS is not enabled"
fi

# Ensure DHCP Server is not enabled
rhel_2_2_5="$(systemctl disable dhcpd.service || yum erase dhcpd -y)"
rhel_2_2_5=$?
if [[ "$rhel_2_2_5" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.5${reset} Ensure DHCP Server is not enabled\n${bold}${green}Remediated${reset} Ensure DHCP Server is not enabled"
else
  echo -e "${bold}${red}2.2.5${reset} Ensure DHCP Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure DHCP Server is not enabled"
fi

# Ensure LDAP server is not enabled
rhel_2_2_6="$(systemctl disable slapd.service || yum erase slapd -y)"
rhel_2_2_6=$?
if [[ "$rhel_2_2_6" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.6${reset} Ensure LDAP server is not enabled\n${bold}${green}Remediated${reset} Ensure LDAP server is not enabled"
else
  echo -e "${bold}${red}2.2.6${reset} Ensure LDAP server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure LDAP server is not enabled"
fi

# Ensure NFS and RPC are not enabled
rhel_2_2_7_temp_1="$(systemctl disable nfs.service || yum erase nfs -y)"
rhel_2_2_7_temp_1=$?
rhel_2_2_7_temp_2="$(systemctl disable rpcbind.service || yum erase rpcbind -y)"
rhel_2_2_7_temp_2=$?
if [[ "$rhel_2_2_7_temp_1" -eq 0 ]] && [[ "$rhel_2_2_7_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.7${reset} Ensure NFS and RPC are not enabled\n${bold}${green}Remediated${reset} Ensure NFS and RPC are not enabled"
else
  echo -e "${bold}${red}2.2.7${reset} Ensure NFS and RPC are not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure NFS and RPC are not enabled"
fi

# Ensure DNS Server is not enabled
rhel_2_2_8="$(systemctl disable named.service || yum erase named -y)"
rhel_2_2_8=$?
if [[ "$rhel_2_2_8" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.8${reset} Ensure DNS Server is not enabled\n${bold}${green}Remediated${reset} Ensure DNS Server is not enabled"
else
  echo -e "${bold}${red}2.2.8${reset} Ensure DNS Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure DNS Server is not enabled"
fi

# Ensure FTP Server is not enabled
rhel_2_2_9="$(systemctl disable vsftpd.service || yum erase vsftpd -y)"
rhel_2_2_9=$?
if [[ "$rhel_2_2_9" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.9${reset} Ensure FTP Server is not enabled\n${bold}${green}Remediated${reset} Ensure FTP Server is not enabled"
else
  echo -e "${bold}${red}2.2.9${reset} Ensure FTP Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure FTP Server is not enabled"
fi

# Ensure HTTP server is not enabled
rhel_2_2_10="$(systemctl disable httpd.service || yum erase httpd -y)"
rhel_2_2_10=$?
if [[ "$rhel_2_2_10" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.10${reset} Ensure HTTP server is not enabled\n${bold}${green}Remediated${reset} Ensure HTTP server is not enabled"
else
  echo -e "${bold}${red}2.2.10${reset} Ensure HTTP server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure HTTP server is not enabled"
fi

# Ensure IMAP and POP3 server is not enabled
rhel_2_2_11="$(systemctl disable dovecot.service || yum erase dovecot -y)"
rhel_2_2_11=$?
if [[ "$rhel_2_2_11" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.11${reset} Ensure IMAP and POP3 server is not enabled\n${bold}${green}Remediated${reset} Ensure IMAP and POP3 server is not enabled"
else
  echo -e "${bold}${red}2.2.11${reset} Ensure IMAP and POP3 server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure IMAP and POP3 server is not enabled"
fi

# Ensure Samba is not enabled
rhel_2_2_12="$(systemctl disable smb.service || yum erase smb -y)"
rhel_2_2_12=$?
if [[ "$rhel_2_2_12" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.12${reset} Ensure Samba is not enabled\n${bold}${green}Remediated${reset} Ensure Samba is not enabled"
else
  echo -e "${bold}${red}2.2.12${reset} Ensure Samba is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure Samba is not enabled"
fi

# Ensure HTTP Proxy Server is not enabled
rhel_2_2_13="$(systemctl disable squid.service || yum erase squid -y)"
rhel_2_2_13=$?
if [[ "$rhel_2_2_13" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.13${reset} Ensure HTTP Proxy Server is not enabled\n${bold}${green}Remediated${reset} Ensure HTTP Proxy Server is not enabled"
else
  echo -e "${bold}${red}2.2.13${reset} Ensure HTTP Proxy Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure HTTP Proxy Server is not enabled"
fi

# Ensure SNMP Server is not enabled
rhel_2_2_14="$(systemctl disable snmpd.service || yum erase snmpd -y)"
rhel_2_2_14=$?
if [[ "$rhel_2_2_14" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.14${reset} Ensure SNMP Server is not enabled\n${bold}${green}Remediated${reset} Ensure SNMP Server is not enabled"
else
  echo -e "${bold}${red}2.2.14${reset} Ensure SNMP Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SNMP Server is not enabled"
fi

# Ensure NIS Server is not enabled
rhel_2_2_16="$(systemctl disable ypserv.service || yum erase ypserv -y)"
rhel_2_2_16=$?
if [[ "$rhel_2_2_16" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.16${reset} Ensure NIS Server is not enabled\n${bold}${green}Remediated${reset} Ensure NIS Server is not enabled"
else
  echo -e "${bold}${red}2.2.16${reset} Ensure NIS Server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure NIS Server is not enabled"
fi

# Ensure rsh server is not enabled
rhel_2_2_17="$(systemctl disable rsh.socket.service || yum erase rsh -y)"
rhel_2_2_17=$?
systemctl disable rlogin.socket.service
systemctl disable rexec.socket.service
if [[ "$rhel_2_2_17" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.17${reset} Ensure rsh server is not enabled\n${bold}${green}Remediated${reset} Ensure rsh server is not enabled"
else
  echo -e "${bold}${red}2.2.17${reset} Ensure rsh server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure rsh server is not enabled"
fi

# Ensure talk server is not enabled
rhel_2_2_18="$(systemctl disable ntalk.service || yum erase ntalk -y)"
rhel_2_2_18=$?
if [[ "$rhel_2_2_18" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.18${reset} Ensure talk server is not enabled\n${bold}${green}Remediated${reset} Ensure talk server is not enabled"
else
  echo -e "${bold}${red}2.2.18${reset} Ensure talk server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure talk server is not enabled"
fi

# Ensure telnet server is not enabled
rhel_2_2_19="$(systemctl disable telnet.socket.service || yum erase telnet -y)"
rhel_2_2_19=$?
if [[ "$rhel_2_2_19" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.19${reset} Ensure telnet server is not enabled\n${bold}${green}Remediated${reset} Ensure telnet server is not enabled"
else
  echo -e "${bold}${red}2.2.19${reset} Ensure telnet server is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure telnet server is not enabled"
fi

# Ensure rsync service is not enabled
rhel_2_2_21="$(systemctl disable rsyncd.service || yum erase rsyncd -y)"
rhel_2_2_21=$?
if [[ "$rhel_2_2_21" -eq 0 ]]; then
  echo -e "${bold}${red}2.2.21${reset} Ensure rsync service is not enabled\n${bold}${green}Remediated${reset} Ensure rsync service is not enabled"
else
  echo -e "${bold}${red}2.2.21${reset} Ensure rsync service is not enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure rsync service is not enabled"
fi

# Ensure NIS Client is not installed
rhel_2_3_1="$(rpm -q ypbind && yum -y erase ypbind)"
rhel_2_3_1=$?
if [[ "$rhel_2_3_1" -eq 0 ]]; then
  echo -e "${bold}${red}2.3.1${reset} Ensure NIS Client is not installed\n${bold}${green}Remediated${reset} Ensure NIS Client is not installed"
else
  echo -e "${bold}${red}2.3.1${reset} Ensure NIS Client is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure NIS Client is not installed"
fi

# Ensure rsh client is not installed
rhel_2_3_2="$(rpm -q rsh && yum -y erase rsh)"
rhel_2_3_2=$?
if [[ "$rhel_2_3_2" -eq 0 ]]; then
  echo -e "${bold}${red}2.3.2${reset} Ensure rsh client is not installed\n${bold}${green}Remediated${reset} Ensure rsh client is not installed"
else
  echo -e "${bold}${red}2.3.2${reset} Ensure rsh client is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure rsh client is not installed"
fi

# Ensure talk client is not installed
rhel_2_3_3="$(rpm -q talk && yum -y erase talk)"
rhel_2_3_3=$?
if [[ "$rhel_2_3_3" -eq 0 ]]; then
  echo -e "${bold}${red}2.3.3${reset} Ensure talk client is not installed\n${bold}${green}Remediated${reset} Ensure talk client is not installed"
else
  echo -e "${bold}${red}2.3.3${reset} Ensure talk client is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure talk client is not installed"
fi

# Ensure telnet client is not installed
rhel_2_3_4="$(rpm -q telnet && yum -y erase telnet)"
rhel_2_3_4=$?
if [[ "$rhel_2_3_4" -eq 0 ]]; then
  echo -e "${bold}${red}2.3.4${reset} Ensure telnet client is not installed\n${bold}${green}Remediated${reset} Ensure telnet client is not installed"
else
  echo -e "${bold}${red}2.3.4${reset} Ensure telnet client is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure telnet client is not installed"
fi

# Ensure LDAP client is not installed
rhel_2_3_5="$(rpm -q openldap-clients && yum -y erase openldap-clients)"
rhel_2_3_5=$?
if [[ "$rhel_2_3_5" -eq 0 ]]; then
  echo -e "${bold}${red}2.3.5${reset} Ensure LDAP client is not installed\n${bold}${green}Remediated${reset} Ensure LDAP client is not installed"
else
  echo -e "${bold}${red}2.3.5${reset} Ensure LDAP client is not installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure LDAP client is not installed"
fi

echo -e "${bold}${pink}------RHEL 7 - Network Configuration------${reset}"

# Ensure IP forwarding is disabled
rhel_3_1_1_temp_1="$(echo "net.ipv4.ip_forward = 0" >> /etc/sysctl.conf)"
rhel_3_1_1_temp_1=$?
rhel_3_1_1_temp_2="$(echo "net.ipv4.ip_forward = 0" >> /etc/sysctl.d/*)"
rhel_3_1_1_temp_2=$?
rhel_3_1_1_temp_3="$(sysctl -w net.ipv4.ip_forward=0)"
rhel_3_1_1_temp_3=$?
rhel_3_1_1_temp_4="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_1_1_temp_4=$?
if [[ "$rhel_3_1_1_temp_1" -eq 0 ]] && [[ "$rhel_3_1_1_temp_2" -eq 0 ]] && [[ "$rhel_3_1_1_temp_3" -eq 0 ]] && [[ "$rhel_3_1_1_temp_4" -eq 0 ]]; then
  echo -e "${bold}${red}3.1.1${reset} Ensure IP forwarding is disabled\n${bold}${green}Remediated${reset} Ensure IP forwarding is disabled"
else
  echo -e "${bold}${red}3.1.1${reset} Ensure IP forwarding is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure IP forwarding is disabled"
fi

# Ensure packet redirect sending is disabled
rhel_3_1_2_temp_1="$(echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_1_2_temp_1=$?
rhel_3_1_2_temp_2="$(echo "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_1_2_temp_2=$?
rhel_3_1_2_temp_3="$(sysctl -w net.ipv4.conf.all.send_redirects=0)"
rhel_3_1_2_temp_3=$?
rhel_3_1_2_temp_4="$(sysctl -w net.ipv4.conf.default.send_redirects=0)"
rhel_3_1_2_temp_4=$?
rhel_3_1_2_temp_5="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_1_2_temp_5=$?
if [[ "$rhel_3_1_2_temp_1" -eq 0 ]] && [[ "$rhel_3_1_2_temp_2" -eq 0 ]] && [[ "$rhel_3_1_2_temp_3" -eq 0 ]] && [[ "$rhel_3_1_2_temp_4" -eq 0 ]] && [[ "$rhel_3_1_2_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.1.2${reset} Ensure packet redirect sending is disabled\n${bold}${green}Remediated${reset} Ensure packet redirect sending is disabled"
else
  echo -e "${bold}${red}3.1.2${reset} Ensure packet redirect sending is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure packet redirect sending is disabled"
fi

# Ensure source routed packets are not accepted
rhel_3_2_1_temp_1="$(echo "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf)"
rhel_3_2_1_temp_1=$?
rhel_3_2_1_temp_2="$(echo "net.ipv4.conf.default.accept_source_route = 0" >> /etc/sysctl.conf)"
rhel_3_2_1_temp_2=$?
rhel_3_2_1_temp_3="$(sysctl -w net.ipv4.conf.all.accept_source_route=0)"
rhel_3_2_1_temp_3=$?
rhel_3_2_1_temp_4="$(sysctl -w net.ipv4.conf.default.accept_source_route=0)"
rhel_3_2_1_temp_4=$?
rhel_3_2_1_temp_5="$sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_1_temp_5=$?
if [[ "$rhel_3_2_1_temp_1" -eq 0 ]] && [[ "$rhel_3_2_1_temp_2" -eq 0 ]] && [[ "$rhel_3_2_1_temp_3" -eq 0 ]] && [[ "$rhel_3_2_1_temp_4" -eq 0 ]] && [[ "$rhel_3_2_1_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.1${reset} Ensure source routed packets are not accepted\n${bold}${green}Remediated${reset} Ensure source routed packets are not accepted"
else
  echo -e "${bold}${red}3.2.1${reset} Ensure source routed packets are not accepted\n${bold}${yellow}UnableToRemidiate${reset} Ensure source routed packets are not accepted"
fi

# Ensure ICMP redirects are not accepted
rhel_3_2_2_temp_1="$(echo "net.ipv4.conf.all.accept_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_2_2_temp_1=$?
rhel_3_2_2_temp_2="$(echo "net.ipv4.conf.default.accept_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_2_2_temp_2=$?
rhel_3_2_2_temp_3="$(sysctl -w net.ipv4.conf.all.accept_redirects=0)"
rhel_3_2_2_temp_3=$?
rhel_3_2_2_temp_4="$(sysctl -w net.ipv4.conf.default.accept_redirects=0)"
rhel_3_2_2_temp_4=$?
rhel_3_2_2_temp_5="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_2_temp_5=$?
if [[ "$rhel_3_2_2_temp_1" -eq 0 ]] && [[ "$rhel_3_2_2_temp_2" -eq 0 ]] && [[ "$rhel_3_2_2_temp_3" -eq 0 ]] && [[ "$rhel_3_2_2_temp_4" -eq 0 ]] && [[ "$rhel_3_2_2_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.2${reset} Ensure ICMP redirects are not accepted\n${bold}${green}Remediated${reset} Ensure ICMP redirects are not accepted"
else
  echo -e "${bold}${red}3.2.2${reset} Ensure ICMP redirects are not accepted\n${bold}${yellow}UnableToRemidiate${reset} Ensure ICMP redirects are not accepted"
fi

# Ensure secure ICMP redirects are not accepted
rhel_3_2_3_temp_1="$(echo "net.ipv4.conf.all.secure_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_2_3_temp_1=$?
rhel_3_2_3_temp_2="$(echo "net.ipv4.conf.default.secure_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_2_3_temp_2=$?
rhel_3_2_3_temp_3="$(sysctl -w net.ipv4.conf.all.secure_redirects=0)"
rhel_3_2_3_temp_3=$?
rhel_3_2_3_temp_4="$(sysctl -w net.ipv4.conf.default.secure_redirects=0)"
rhel_3_2_3_temp_4=$?
rhel_3_2_3_temp_5="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_3_temp_5=$?
if [[ "$rhel_3_2_3_temp_1" -eq 0 ]] && [[ "$rhel_3_2_3_temp_2" -eq 0 ]] && [[ "$rhel_3_2_3_temp_3" -eq 0 ]] && [[ "$rhel_3_2_3_temp_4" -eq 0 ]] && [[ "$rhel_3_2_3_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.3${reset} Ensure secure ICMP redirects are not accepted\n${bold}${green}Remediated${reset} Ensure secure ICMP redirects are not accepted"
else
  echo -e "${bold}${red}3.2.3${reset} Ensure secure ICMP redirects are not accepted\n${bold}${yellow}UnableToRemidiate${reset} Ensure secure ICMP redirects are not accepted"
fi

# Ensure suspicious packets are logged
rhel_3_2_4_temp_1="$(echo "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.conf)"
rhel_3_2_4_temp_1=$?
rhel_3_2_4_temp_2="$(echo "net.ipv4.conf.default.log_martians = 1" >> /etc/sysctl.conf)"
rhel_3_2_4_temp_2=$?
rhel_3_2_4_temp_3="$(sysctl -w net.ipv4.conf.all.log_martians=1)"
rhel_3_2_4_temp_3=$?
rhel_3_2_4_temp_4="$(sysctl -w net.ipv4.conf.default.log_martians=1)"
rhel_3_2_4_temp_4=$?
rhel_3_2_4_temp_5="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_4_temp_5=$?
if [[ "$rhel_3_2_4_temp_1" -eq 0 ]] && [[ "$rhel_3_2_4_temp_2" -eq 0 ]] && [[ "$rhel_3_2_4_temp_3" -eq 0 ]] && [[ "$rhel_3_2_4_temp_4" -eq 0 ]] && [[ "$rhel_3_2_4_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.4${reset} Ensure suspicious packets are logged\n${bold}${green}Remediated${reset} Ensure suspicious packets are logged"
else
  echo -e "${bold}${red}3.2.4${reset} Ensure suspicious packets are logged\n${bold}${yellow}UnableToRemidiate${reset} Ensure suspicious packets are logged"
fi

# Ensure broadcast ICMP requests are ignored
rhel_3_2_5_temp_1="$(echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> /etc/sysctl.conf)"
rhel_3_2_5_temp_1=$?
rhel_3_2_5_temp_2="$(sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1)"
rhel_3_2_5_temp_2=$?
rhel_3_2_5_temp_3="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_5_temp_3=$?
if [[ "$rhel_3_2_5_temp_1" -eq 0 ]] && [[ "$rhel_3_2_5_temp_2" -eq 0 ]] && [[ "$rhel_3_2_5_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.5${reset} Ensure broadcast ICMP requests are ignored\n${bold}${green}Remediated${reset} Ensure broadcast ICMP requests are ignored"
else
  echo -e "${bold}${red}3.2.5${reset} Ensure broadcast ICMP requests are ignored\n${bold}${yellow}UnableToRemidiate${reset} Ensure broadcast ICMP requests are ignored"
fi

# Ensure bogus ICMP responses are ignored
rhel_3_2_6_temp_1="$(echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> /etc/sysctl.conf)"
rhel_3_2_6_temp_1=$?
rhel_3_2_6_temp_2="$(sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1)"
rhel_3_2_6_temp_2=$?
rhel_3_2_6_temp_3="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_6_temp_3=$?
if [[ "$rhel_3_2_6_temp_1" -eq 0 ]] && [[ "$rhel_3_2_6_temp_2" -eq 0 ]] && [[ "$rhel_3_2_6_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.6${reset} Ensure bogus ICMP responses are ignored\n${bold}${green}Remediated${reset} Ensure bogus ICMP responses are ignored"
else
  echo -e "${bold}${red}3.2.6${reset} Ensure bogus ICMP responses are ignored\n${bold}${yellow}UnableToRemidiate${reset} Ensure bogus ICMP responses are ignored"
fi

# Ensure Reverse Path Filtering is enabled
rhel_3_2_7_temp_1="$(echo "net.ipv4.conf.all.rp_filter = 1" >> /etc/sysctl.conf)"
rhel_3_2_7_temp_1=$?
rhel_3_2_7_temp_2="$(echo "net.ipv4.conf.default.rp_filter = 1" >> /etc/sysctl.conf)"
rhel_3_2_7_temp_2=$?
rhel_3_2_7_temp_3="$(sysctl -w net.ipv4.conf.all.rp_filter=1)"
rhel_3_2_7_temp_3=$?
rhel_3_2_7_temp_4="$(sysctl -w net.ipv4.conf.default.rp_filter=1)"
rhel_3_2_7_temp_4=$?
rhel_3_2_7_temp_5="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_7_temp_5=$?
if [[ "$rhel_3_2_7_temp_1" -eq 0 ]] && [[ "$rhel_3_2_7_temp_2" -eq 0 ]] && [[ "$rhel_3_2_7_temp_3" -eq 0 ]] && [[ "$rhel_3_2_7_temp_4" -eq 0 ]] && [[ "$rhel_3_2_7_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.7${reset} Ensure Reverse Path Filtering is enabled\n${bold}${green}Remediated${reset} Ensure Reverse Path Filtering is enabled"
else
  echo -e "${bold}${red}3.2.7${reset} Ensure Reverse Path Filtering is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure Reverse Path Filtering is enabled"
fi

# Ensure TCP SYN Cookies is enabled
rhel_3_2_8_temp_1="$(echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf)"
rhel_3_2_8_temp_1=$?
rhel_3_2_8_temp_2="$sysctl -w net.ipv4.tcp_syncookies=1)"
rhel_3_2_8_temp_2=$?
rhel_3_2_8_temp_3="$(sysctl -w net.ipv4.route.flush=1)"
rhel_3_2_8_temp_3=$?
if [[ "$rhel_3_2_8_temp_1" -eq 0 ]] && [[ "$rhel_3_2_8_temp_2" -eq 0 ]] && [[ "$rhel_3_2_8_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}3.2.8${reset} Ensure TCP SYN Cookies is enabled\n${bold}${green}Remediated${reset} Ensure TCP SYN Cookies is enabled"
else
  echo -e "${bold}${red}3.2.8${reset} Ensure TCP SYN Cookies is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure TCP SYN Cookies is enabled"
fi

# Ensure IPv6 router advertisements are not accepted
rhel_3_3_1_temp_1="$(echo "net.ipv6.conf.all.accept_ra = 0" >> /etc/sysctl.conf)"
rhel_3_3_1_temp_1=$?
rhel_3_3_1_temp_2="$(echo "net.ipv6.conf.default.accept_ra = 0" >> /etc/sysctl.conf)"
rhel_3_3_1_temp_2=$?
rhel_3_3_1_temp_3="$(sysctl -w net.ipv6.conf.all.accept_ra=0)"
rhel_3_3_1_temp_3=$?
rhel_3_3_1_temp_4="$(sysctl -w net.ipv6.conf.default.accept_ra=0)"
rhel_3_3_1_temp_4=$?
rhel_3_3_1_temp_5="$(sysctl -w net.ipv6.route.flush=1)"
rhel_3_3_1_temp_5=$?
if [[ "$rhel_3_3_1_temp_1" -eq 0 ]] && [[ "$rhel_3_3_1_temp_2" -eq 0 ]] && [[ "$rhel_3_3_1_temp_3" -eq 0 ]] && [[ "$rhel_3_3_1_temp_4" -eq 0 ]] && [[ "$rhel_3_3_1_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.3.1${reset} Ensure IPv6 router advertisements are not accepted\n${bold}${green}Remediated${reset} Ensure IPv6 router advertisements are not accepted"
else
  echo -e "${bold}${red}3.3.1${reset} Ensure IPv6 router advertisements are not accepted\n${bold}${yellow}UnableToRemidiate${reset} Ensure IPv6 router advertisements are not accepted"
fi

# Ensure IPv6 redirects are not accepted
rhel_3_3_2_temp_1="$(echo "net.ipv6.conf.all.accept_redirects = 0" >> /etc/sysctl.conf)"
rhel_3_3_2_temp_1=$?
rhel_3_3_2_temp_2="$(echo "net.ipv6.conf.default.accept_redirects = 0" >> /etc/sysctl.d/*)"
rhel_3_3_2_temp_2=$?
rhel_3_3_2_temp_3="$(sysctl -w net.ipv6.conf.all.accept_redirects=0)"
rhel_3_3_2_temp_3=$?
rhel_3_3_2_temp_4="$(sysctl -w net.ipv6.conf.default.accept_redirects=0)"
rhel_3_3_2_temp_4=$?
rhel_3_3_2_temp_5="$(sysctl -w net.ipv6.route.flush=1)"
rhel_3_3_2_temp_5=$?
if [[ "$rhel_3_3_2_temp_1" -eq 0 ]] && [[ "$rhel_3_3_2_temp_2" -eq 0 ]] && [[ "$rhel_3_3_2_temp_3" -eq 0 ]] && [[ "$rhel_3_3_2_temp_4" -eq 0 ]] && [[ "$rhel_3_3_2_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.3.2${reset} Ensure IPv6 redirects are not accepted\n${bold}${green}Remediated${reset} Ensure IPv6 redirects are not accepted"
else
  echo -e "${bold}${red}3.3.2${reset} Ensure IPv6 redirects are not accepted\n${bold}${yellow}UnableToRemidiate${reset} Ensure IPv6 redirects are not accepted"
fi

# Ensure TCP Wrappers is installed
rhel_3_4_1_temp_1="$(rpm -q tcp_wrappers || yum -y install tcp_wrappers)"
rhel_3_4_1_temp_1=$?
rhel_3_4_1_temp_2="$(rpm -q tcp_wrappers-libs || yum -y install tcp_wrappers-libs)"
rhel_3_4_1_temp_2=$?
if [[ "$rhel_3_4_1_temp_1" -eq 0 ]] && [[ "$rhel_3_4_1_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}3.4.1${reset} Ensure TCP Wrappers is installed\n${bold}${green}Remediated${reset} Ensure TCP Wrappers is installed"
else
  echo -e "${bold}${red}3.4.1${reset} Ensure TCP Wrappers is installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure TCP Wrappers is installed"
fi

# Ensure /etc/hosts.allow is configured
rhel_3_4_2="$(touch /etc/hosts.allow)"
rhel_3_4_2=$?
if [[ "$rhel_3_4_2" -eq 0 ]]; then
  echo -e "${bold}${red}3.4.2${reset} Ensure /etc/hosts.allow is configured\n${bold}${green}Remediated${reset} Ensure /etc/hosts.allow is configured"
else
  echo -e "${bold}${red}3.4.2${reset} Ensure /etc/hosts.allow is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure /etc/hosts.allow is configured"
fi

# Ensure /etc/hosts.deny is configured
rhel_3_4_3="$(touch /etc/hosts.deny)"
rhel_3_4_3=$?
if [[ "$rhel_3_4_3" -eq 0 ]]; then
  echo -e "${bold}${red}3.4.3${reset} Ensure /etc/hosts.deny is configured\n${bold}${green}Remediated${reset} Ensure /etc/hosts.deny is configured"
else
  echo -e "${bold}${red}3.4.3${reset} Ensure /etc/hosts.deny is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure /etc/hosts.deny is configured"
fi

# Ensure permissions on /etc/hosts.allow are configured
rhel_3_4_4="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/hosts.allow)"
rhel_3_4_4=$?
if [[ "$rhel_3_4_4" -eq 0 ]]; then
  echo -e "${bold}${red}3.4.4${reset} Ensure permissions on /etc/hosts.allow are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/hosts.allow are configured"
else
  echo -e "${bold}${red}3.4.4${reset} Ensure permissions on /etc/hosts.allow are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/hosts.allow are configured"
fi

# Ensure permissions on /etc/hosts.deny are 644
rhel_3_4_5="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/hosts.deny)"
rhel_3_4_5=$?
if [[ "$rhel_3_4_5" -eq 0 ]]; then
  echo -e "${bold}${red}3.4.5${reset} Ensure permissions on /etc/hosts.deny are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/hosts.deny are configured"
else
  echo -e "${bold}${red}3.4.5${reset} Ensure permissions on /etc/hosts.deny are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/hosts.deny are configured"
fi

# Ensure DCCP is disabled
rhel_3_5_1="$(modprobe -n -v dccp | grep "^install /bin/true$" || echo "install dccp /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_3_5_1=$?
lsmod | egrep "^dccp\s" && rmmod dccp
if [[ "$rhel_3_5_1" -eq 0 ]]; then
  echo -e "${bold}${red}3.5.1${reset} Ensure DCCP is disabled\n${bold}${green}Remediated${reset} Ensure DCCP is disabled"
else
  echo -e "${bold}${red}3.5.1${reset} Ensure DCCP is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure DCCP is disabled"
fi

# Ensure SCTP is disabled
rhel_3_5_2="$(modprobe -n -v sctp | grep "^install /bin/true$" || echo "install sctp /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_3_5_2=$?
lsmod | egrep "^sctp\s" && rmmod sctp
if [[ "$rhel_3_5_2" -eq 0 ]]; then
  echo -e "${bold}${red}3.5.2${reset} Ensure SCTP is disabled\n${bold}${green}Remediated${reset} Ensure SCTP is disabled"
else
  echo -e "${bold}${red}3.5.2${reset} Ensure SCTP is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SCTP is disabled"
fi

# Ensure RDS is disabled
rhel_3_5_3="$(modprobe -n -v rds | grep "^install /bin/true$" || echo "install rds /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_3_5_3=$?
lsmod | egrep "^rds\s" && rmmod rds
if [[ "$rhel_3_5_3" -eq 0 ]]; then
  echo -e "${bold}${red}3.5.3${reset} Ensure RDS is disabled\n${bold}${green}Remediated${reset} Ensure RDS is disabled"
else
  echo -e "${bold}${red}3.5.3${reset} Ensure RDS is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure RDS is disabled"
fi

# Ensure TIPC is disabled
rhel_3_5_4="$(modprobe -n -v tipc | grep "^install /bin/true$" || echo "install tipc /bin/true" >> /etc/modprobe.d/CIS.conf)"
rhel_3_5_4=$?
lsmod | egrep "^tipc\s" && rmmod tipc
if [[ "$rhel_3_5_4" -eq 0 ]]; then
  echo -e "${bold}${red}3.5.4${reset} Ensure TIPC is disabled\n${bold}${green}Remediated${reset} Ensure TIPC is disabled"
else
  echo -e "${bold}${red}3.5.4${reset} Ensure TIPC is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure TIPC is disabled"
fi

# Ensure iptables is installed
rhel_3_6_1="$(rpm -q iptables || yum -y install iptables)"
rhel_3_6_1=$?
if [[ "$rhel_3_6_1" -eq 0 ]]; then
  echo -e "${bold}${red}3.6.1${reset} Ensure iptables is installed\n${bold}${green}Remediated${reset} Ensure iptables is installed"
else
  echo -e "${bold}${red}3.6.1${reset} Ensure iptables is installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure iptables is installed"
fi

echo -e "${bold}${pink}------RHEL 7 - Logging and Auditing------${reset}"

# Ensure rsyslog Service is enabled
rhel_4_2_1_1="$(rpm -q rsyslog && yum install rsyslog -y && systemctl enable rsyslog.service)"
rhel_4_2_1_1=$?
if [[ "$rhel_4_2_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}4.2.1.1${reset} Ensure rsyslog Service is enabled\n${bold}${green}Remediated${reset} Ensure rsyslog Service is enabled"
else
  echo -e "${bold}${red}4.2.1.1${reset} Ensure rsyslog Service is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure rsyslog Service is enabled"
fi

# Ensure syslog-ng service is enabled
rhel_4_2_2_1="$(rpm -q syslog-ng && systemctl enable syslog-ng.service)"
rhel_4_2_2_1=$?
if [[ "$rhel_4_2_2_1" -eq 0 ]]; then
  echo -e "${bold}${red}4.2.2.1${reset} Ensure syslog-ng service is enabled\n${bold}${green}Remediated${reset} Ensure syslog-ng service is enabled"
else
  echo -e "${bold}${red}4.2.2.1${reset} Ensure syslog-ng service is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure syslog-ng service is enabled"
fi

# Ensure rsyslog or syslog-ng is installed
rhel_4_2_3="$(rpm -q rsyslog || rpm -q syslog-ng || yum -y install rsyslog)"
rhel_4_2_3=$?
if [[ "$rhel_4_2_3" -eq 0 ]]; then
  echo -e "${bold}${red}4.2.3${reset} Ensure rsyslog or syslog-ng is installed\n${bold}${green}Remediated${reset} Ensure rsyslog or syslog-ng is installed"
else
  echo -e "${bold}${red}4.2.3${reset} Ensure rsyslog or syslog-ng is installed\n${bold}${yellow}UnableToRemidiate${reset} Ensure rsyslog or syslog-ng is installed"
fi

# Ensure permissions on all logfiles are configured
rhel_4_2_4="$(chmod -R g-w-x,o-r-w-x /var/log/*)"
rhel_4_2_4=$?
if [[ "$rhel_4_2_4" -eq 0 ]]; then
  echo -e "${bold}${red}4.2.4${reset} Ensure permissions on all logfiles are configured\n${bold}${green}Remediated${reset} Ensure permissions on all logfiles are configured"
else
  echo -e "${bold}${red}4.2.4${reset} Ensure permissions on all logfiles are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on all logfiles are configuredd"
fi

# Ensure system is disabled when audit logs are full
rhel_4_1_1_2_temp_1="$(echo "space_left_action = email" >> /etc/audit/auditd.conf)"
rhel_4_1_1_2_temp_1=$?
rhel_4_1_1_2_temp_2="$(echo "action_mail_acct = root" >> /etc/audit/auditd.conf)"
rhel_4_1_1_2_temp_2=$?
rhel_4_1_1_2_temp_3="$(echo "admin_space_left_action = halt" >> /etc/audit/auditd.conf)"
rhel_4_1_1_2_temp_3=$?
if [[ "$rhel_4_1_1_2_temp_1" -eq 0 ]] && [[ "$rhel_4_1_1_2_temp_2" -eq 0 ]] && [[ "$rhel_4_1_1_2_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.1.2${reset} Ensure system is disabled when audit logs are full\n${bold}${green}Remediated${reset} Ensure system is disabled when audit logs are full"
else
  echo -e "${bold}${red}4.1.1.2${reset} Ensure system is disabled when audit logs are full\n${bold}${yellow}UnableToRemidiate${reset} Ensure system is disabled when audit logs are full"
fi

# Ensure audit logs are not automatically deleted
rhel_4_1_1_3="$(echo "max_log_file_action = keep_logs" >> /etc/audit/auditd.conf)"
rhel_4_1_1_3=$?
if [[ "$rhel_4_1_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.1.3${reset} Ensure audit logs are not automatically deleted\n${bold}${green}Remediated${reset} Ensure audit logs are not automatically deleted"
else
  echo -e "${bold}${red}4.1.1.3${reset} Ensure audit logs are not automatically deleted\n${bold}${yellow}UnableToRemidiate${reset} Ensure audit logs are not automatically deleted"
fi

# Ensure auditd service is enabled
rhel_4_1_2="$(systemctl enable auditd.service)"
rhel_4_1_2=$?
if [[ "$rhel_4_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.2${reset} Ensure auditd service is enabled\n${bold}${green}Remediated${reset} Ensure auditd service is enabled"
else
  echo -e "${bold}${red}4.1.2${reset} Ensure auditd service is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure auditd service is enabled"
fi

# Ensure auditing for processes that start prior to auditd is enabled
rhel_4_1_3_temp_1="$(echo "GRUB_CMDLINE_LINUX=\"audit=1\"" >> /etc/default/grub)"
rhel_4_1_3_temp_1=$?
rhel_4_1_3_temp_2="$(grub2-mkconfig -o /boot/grub2/grub.cfg)"
rhel_4_1_3_temp_2=$?
if [[ "$rhel_4_1_3_temp_1" -eq 0 ]] && [[ "$rhel_4_1_3_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.3${reset} Ensure auditing for processes that start prior to auditd is enabled\n${bold}${green}Remediated${reset} Ensure auditing for processes that start prior to auditd is enabled"
else
  echo -e "${bold}${red}4.1.3${reset} Ensure auditing for processes that start prior to auditd is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure auditing for processes that start prior to auditd is enabled"
fi

# Ensure events that modify date and time information are collected
rhel_4_1_4_temp_1="$(echo "-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-change" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_4_temp_1=$?
rhel_4_1_4_temp_2="$(echo "-a always,exit -F arch=b32 -S clock_settime -k time-change" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_4_temp_2=$?
echo "-w /etc/localtime -p wa -k time-change" >> /etc/audit/rules.d/audit.rules
uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S adjtimex -S settimeofday -k time-change" >> /etc/audit/rules.d/audit.rules
rhel_4_1_4_temp_3="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S clock_settime -k time-change" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_4_temp_3=$?
if [[ "$rhel_4_1_4_temp_1" -eq 0 ]] && [[ "$rhel_4_1_4_temp_2" -eq 0 ]] && [[ "$rhel_4_1_4_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.4${reset} Ensure events that modify date and time information are collected\n${bold}${green}Remediated${reset} Ensure events that modify date and time information are collected"
else
  echo -e "${bold}${red}4.1.4${reset} Ensure events that modify date and time information are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure events that modify date and time information are collected"
fi

# Ensure events that modify user/group information are collected
rhel_4_1_5_temp_1="$(cho "-w /etc/group -p wa -k identity" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_5_temp_1=$?
rhel_4_1_5_temp_2="$(echo "-w /etc/passwd -p wa -k identity" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_5_temp_2=$?
rhel_4_1_5_temp_3="$(echo "-w /etc/gshadow -p wa -k identity" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_5_temp_3=$?
rhel_4_1_5_temp_4="$(echo "-w /etc/shadow -p wa -k identity" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_5_temp_4=$?
rhel_4_1_5_temp_5="$(echo "-w /etc/security/opasswd -p wa -k identity" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_5_temp_5=$?
if [[ "$rhel_4_1_5_temp_1" -eq 0 ]] && [[ "$rhel_4_1_5_temp_2" -eq 0 ]] && [[ "$rhel_4_1_5_temp_3" -eq 0 ]] && [[ "$rhel_4_1_5_temp_4" -eq 0 ]] && [[ "$rhel_4_1_5_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.5${reset} Ensure events that modify user/group information are collected\n${bold}${green}Remediated${reset} Ensure events that modify user/group information are collected"
else
  echo -e "${bold}${red}4.1.5${reset} Ensure events that modify user/group information are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure events that modify user/group information are collected"
fi

# Ensure events that modify the system's network environment are collected
rhel_4_1_6_temp_1="$(echo "-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_6_temp_1=$?
rhel_4_1_6_temp_2="$(echo "-w /etc/issue -p wa -k system-locale" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_6_temp_2=$?
rhel_4_1_6_temp_3="$(cho "-w /etc/issue.net -p wa -k system-locale" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_6_temp_3=$?
rhel_4_1_6_temp_4="$(echo "-w /etc/hosts -p wa -k system-locale" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_6_temp_4=$?
echo "-w /etc/sysconfig/network -p wa -k system-locale" >> /etc/audit/rules.d/audit.rules
rhel_4_1_6_temp_5="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S sethostname -S setdomainname -k system-locale" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_6_temp_5=$?
if [[ "$rhel_4_1_6_temp_1" -eq 0 ]] && [[ "$rhel_4_1_6_temp_2" -eq 0 ]] && [[ "$rhel_4_1_6_temp_3" -eq 0 ]] && [[ "$rhel_4_1_6_temp_4" -eq 0 ]] && [[ "$rhel_4_1_6_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.6${reset} Ensure events that modify the system's network environment are collected\n${bold}${green}Remediated${reset} Ensure events that modify the system's network environment are collected"
else
  echo -e "${bold}${red}4.1.6${reset} Ensure events that modify the system's network environment are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure events that modify the system's network environment are collected"
fi

# Ensure events that modify the system's Mandatory Access Controls are collected
rhel_4_1_7="$(echo "-w /etc/selinux/ -p wa -k MAC-policy" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_7=$?
if [[ "$rhel_4_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.7${reset} Ensure events that modify the system's Mandatory Access Controls are collected\n${bold}${green}Remediated${reset} Ensure events that modify the system's Mandatory Access Controls are collected"
else
  echo -e "${bold}${red}4.1.7${reset} Ensure events that modify the system's Mandatory Access Controls are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure events that modify the system's Mandatory Access Controls are collected"
fi

# Ensure login and logout events are collected
rhel_4_1_8_temp_1="$(echo "-w /var/run/faillock/ -p wa -k logins" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_8_temp_1=$?
rhel_4_1_8_temp_2="$(echo "-w /var/log/lastlog -p wa -k logins" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_8_temp_2=$?
if [[ "$rhel_4_1_8_temp_1" -eq 0 ]] && [[ "$rhel_4_1_8_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.8${reset} Ensure login and logout events are collected\n${bold}${green}Remediated${reset} Ensure login and logout events are collected"
else
  echo -e "${bold}${red}4.1.8${reset} Ensure login and logout events are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure login and logout events are collected"
fi

# Ensure session initiation information is collected
rhel_4_1_9_temp_1="$(echo "-w /var/run/utmp -p wa -k session" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_9_temp_1=$?
rhel_4_1_9_temp_2="$(echo "-w /var/log/wtmp -p wa -k session" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_9_temp_2=$?
rhel_4_1_9_temp_3="$(echo "-w /var/log/btmp -p wa -k session" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_9_temp_3=$?
if [[ "$rhel_4_1_9_temp_1" -eq 0 ]] && [[ "$rhel_4_1_9_temp_2" -eq 0 ]] && [[ "$rhel_4_1_9_temp_3" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.9${reset} Ensure session initiation information is collected\n${bold}${green}Remediated${reset} Ensure session initiation information is collected"
else
  echo -e "${bold}${red}4.1.9${reset} Ensure session initiation information is collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure session initiation information is collected"
fi

# Ensure discretionary access control permission modification events are collected
rhel_4_1_10_temp_1="$(echo "-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_1=$?
rhel_4_1_10_temp_2="$(echo "-a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_2=$?
rhel_4_1_10_temp_3="$(echo "-a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_3=$?
rhel_4_1_10_temp_4="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_4=$?
rhel_4_1_10_temp_5="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_5=$?
rhel_4_1_10_temp_6="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_10_temp_6=$?
if [[ "$rhel_4_1_10_temp_1" -eq 0 ]] && [[ "$rhel_4_1_10_temp_2" -eq 0 ]] && [[ "$rhel_4_1_10_temp_3" -eq 0 ]] && [[ "$rhel_4_1_10_temp_4" -eq 0 ]] && [[ "$rhel_4_1_10_temp_5" -eq 0 ]] && [[ "$rhel_4_1_10_temp_6" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.10${reset} Ensure discretionary access control permission modification events are collected\n${bold}${green}Remediated${reset} Ensure discretionary access control permission modification events are collected"
else
  echo -e "${bold}${red}4.1.10${reset} Ensure discretionary access control permission modification events are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure discretionary access control permission modification events are collected"
fi

# Ensure unsuccessful unauthorized file access attempts are collected
rhel_4_1_11_temp_1="$(echo "-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_11_temp_1=$?
rhel_4_1_11_temp_2="$(echo "-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_11_temp_2=$?
rhel_4_1_11_temp_3="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k access" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_11_temp_3=$?
rhel_4_1_11_temp_4="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k access" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_11_temp_4=$?
if [[ "$rhel_4_1_11_temp_1" -eq 0 ]] && [[ "$rhel_4_1_11_temp_2" -eq 0 ]] && [[ "$rhel_4_1_11_temp_3" -eq 0 ]] && [[ "$rhel_4_1_11_temp_4" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.11${reset} Ensure unsuccessful unauthorized file access attempts are collected\n${bold}${green}Remediated${reset} Ensure unsuccessful unauthorized file access attempts are collected"
else
  echo -e "${bold}${red}4.1.11${reset} Ensure unsuccessful unauthorized file access attempts are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure unsuccessful unauthorized file access attempts are collected"
fi

'''
# Ensure use of privileged commands is collected
for file in `find / -xdev \( -perm -4000 -o -perm -2000 \) -type f`; do egrep -q "^\s*-a\s+(always,exit|exit,always)\s+-F\s+path=$file\s+-F\s+perm=x\s+-F\s+auid>=1000\s+-F\s+auid!=4294967295\s+-k\s+privileged\s*(#.*)?$" /etc/audit/rules.d/audit.rules || echo "-a always,exit -F path=$file -F perm=x -F auid>=1000 -F auid!=4294967295 -k privileged" >> /etc/audit/rules.d/audit.rules; done
echo -e "${bold}${red}4.1.12${reset} Ensure use of privileged commands is collected\n${bold}${green}Remediated${reset} Ensure use of privileged commands is collected"
'''

# Ensure successful file system mounts are collected
rhel_4_1_13_temp_1="$(echo "-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_13_temp_1=$?
rhel_4_1_13_temp_2="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_13_temp_2=$?
if [[ "$rhel_4_1_13_temp_1" -eq 0 ]] && [[ "$rhel_4_1_13_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.13${reset} Ensure successful file system mounts are collected\n${bold}${green}Remediated${reset} Ensure successful file system mounts are collected"
else
  echo -e "${bold}${red}4.1.13${reset} Ensure successful file system mounts are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure successful file system mounts are collected"
fi

# Ensure file deletion events by users are collected
rhel_4_1_14_temp_1="$(echo "-a always,exit -F arch=b32 -S unlink -S unlinkat -S rename -S renameat -F auid>=1000 -F auid!=4294967295 -k delete" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_14_temp_1=$?
rhel_4_1_14_temp_2="$(uname -p | grep -q 'x86_64' && echo "-a always,exit -F arch=b64 -S unlink -S unlinkat -S rename -S renameat -F auid>=1000 -F auid!=4294967295 -k delete" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_14_temp_2=$?
if [[ "$rhel_4_1_14_temp_1" -eq 0 ]] && [[ "$rhel_4_1_14_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.14${reset} Ensure file deletion events by users are collected\n${bold}${green}Remediated${reset} Ensure file deletion events by users are collected"
else
  echo -e "${bold}${red}4.1.14${reset} Ensure file deletion events by users are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure file deletion events by users are collected"
fi

# Ensure changes to system administration scope (sudoers) is collected
rhel_4_1_15_temp_1="$(echo "-w /etc/sudoers -p wa -k scope" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_15_temp_1=$?
rhel_4_1_15_temp_2="$(echo "-w /etc/sudoers.d -p wa -k scope" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_15_temp_2=$?
if [[ "$rhel_4_1_15_temp_1" -eq 0 ]] && [[ "$rhel_4_1_15_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.15${reset} Ensure changes to system administration scope (sudoers) is collected\n${bold}${green}Remediated${reset} Ensure changes to system administration scope (sudoers) is collected"
else
  echo -e "${bold}${red}4.1.15${reset} Ensure changes to system administration scope (sudoers) is collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure changes to system administration scope (sudoers) is collected"
fi

# Ensure system administrator actions (sudolog) are collected
rhel_4_1_16="$(echo "-w /var/log/sudo.log -p wa -k actions" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_16=$?
if [[ "$rhel_4_1_16" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.16${reset} Ensure system administrator actions (sudolog) are collected\n${bold}${green}Remediated${reset} Ensure system administrator actions (sudolog) are collected"
else
  echo -e "${bold}${red}4.1.16${reset} Ensure system administrator actions (sudolog) are collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure system administrator actions (sudolog) are collected"
fi

# Ensure kernel module loading and unloading is collected
rhel_4_1_17_temp_1="$(echo "-w /sbin/insmod -p x -k modules" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_17_temp_1=$?
rhel_4_1_17_temp_2="$(echo "-w /sbin/rmmod -p x -k modules" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_17_temp_2=$?
rhel_4_1_17_temp_3="$(echo "-w /sbin/modprobe -p x -k modules" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_17_temp_3=$?
rhel_4_1_17_temp_4="$(uname -p | grep -q 'x86_64' || echo "-a always,exit arch=b32 -S init_module -S delete_module -k modules" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_17_temp_4=$?
rhel_4_1_17_temp_5="$(uname -p | grep -q 'x86_64' && echo "-a always,exit arch=b64 -S init_module -S delete_module -k modules" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_17_temp_5=$?
if [[ "$rhel_4_1_17_temp_1" -eq 0 ]] && [[ "$rhel_4_1_17_temp_2" -eq 0 ]] && [[ "$rhel_4_1_17_temp_3" -eq 0 ]] && [[ "$rhel_4_1_17_temp_4" -eq 0 ]] && [[ "$rhel_4_1_17_temp_5" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.17${reset} Ensure kernel module loading and unloading is collected\n${bold}${green}Remediated${reset} Ensure kernel module loading and unloading is collected"
else
  echo -e "${bold}${red}4.1.17${reset} Ensure kernel module loading and unloading is collected\n${bold}${yellow}UnableToRemidiate${reset} Ensure kernel module loading and unloading is collected"
fi

# Ensure the audit configuration is immutable
rhel_4_1_18="$(echo "-e 2" >> /etc/audit/rules.d/audit.rules)"
rhel_4_1_18=$?
if [[ "$rhel_4_1_18" -eq 0 ]]; then
  echo -e "${bold}${red}4.1.18${reset} Ensure the audit configuration is immutable\n${bold}${green}Remediated${reset} Ensure the audit configuration is immutable"
else
  echo -e "${bold}${red}4.1.18${reset} Ensure the audit configuration is immutable\n${bold}${yellow}UnableToRemidiate${reset} Ensure the audit configuration is immutable"
fi

echo -e "${bold}${pink}------RHEL 7 - Access, Authentication and Authorization------${reset}"

# Ensure cron daemon is enabled
rhel_5_1_1="$(systemctl enable crond.service)"
rhel_5_1_1=$?
if [[ "$rhel_5_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.1${reset} Ensure cron daemon is enabled\n${bold}${green}Remediated${reset} Ensure cron daemon is enabled"
else
  echo -e "${bold}${red}5.1.1${reset} Ensure cron daemon is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure cron daemon is enabled"
fi

# Ensure permissions on /etc/crontab are configured
rhel_5_1_2="$(chmod g-r-w-x,o-r-w-x /etc/crontab)"
rhel_5_1_2=$?
if [[ "$rhel_5_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.2${reset} Ensure permissions on /etc/crontab are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/crontab are configured"
else
  echo -e "${bold}${red}5.1.2${reset} Ensure permissions on /etc/crontab are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/crontab are configured"
fi

# Ensure permissions on /etc/cron.hourly are configured
rhel_5_1_3="$(chmod g-r-w-x,o-r-w-x /etc/cron.hourly)"
rhel_5_1_3=$?
if [[ "$rhel_5_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.3${reset} Ensure permissions on /etc/cron.hourly are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/cron.hourly are configured"
else
  echo -e "${bold}${red}5.1.3${reset} Ensure permissions on /etc/cron.hourly are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/cron.hourly are configured"
fi

# Ensure permissions on /etc/cron.daily are configured
rhel_5_1_4="$(chmod g-r-w-x,o-r-w-x /etc/cron.daily)"
rhel_5_1_4=$?
if [[ "$rhel_5_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.4${reset} Ensure permissions on /etc/cron.daily are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/cron.daily are configured"
else
  echo -e "${bold}${red}5.1.4${reset} Ensure permissions on /etc/cron.daily are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/cron.daily are configured"
fi

# Ensure permissions on /etc/cron.weekly are configured
rhel_5_1_5="$(chmod g-r-w-x,o-r-w-x /etc/cron.weekly)"
rhel_5_1_5=$?
if [[ "$rhel_5_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.5${reset} Ensure permissions on /etc/cron.weekly are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/cron.weekly are configured"
else
  echo -e "${bold}${red}5.1.5${reset} Ensure permissions on /etc/cron.weekly are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/cron.weekly are configured"
fi

# Ensure permissions on /etc/cron.monthly are configured
rhel_5_1_6="$(chmod g-r-w-x,o-r-w-x /etc/cron.monthly)"
rhel_5_1_6=$?
if [[ "$rhel_5_1_6" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.6${reset} Ensure permissions on /etc/cron.monthly are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/cron.monthly are configured"
else
  echo -e "${bold}${red}5.1.6${reset} Ensure permissions on /etc/cron.monthly are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/cron.monthly are configured"
fi

# Ensure permissions on /etc/cron.d are configured
rhel_5_1_7="$(chmod g-r-w-x,o-r-w-x /etc/cron.d)"
rhel_5_1_7=$?
if [[ "$rhel_5_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.7${reset} Ensure permissions on /etc/cron.d are configured enabled\n${bold}${green}Remediated${reset} Ensure permissions on /etc/cron.d are configured"
else
  echo -e "${bold}${red}5.1.7${reset} Ensure permissions on /etc/cron.d are configured enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/cron.d are configured"
fi

# Ensure at/cron is restricted to authorized users
rm /etc/cron.deny
rm /etc/at.deny
touch /etc/cron.allow
touch /etc/at.allow
rhel_5_1_8_temp_1="$(chmod g-r-w-x,o-r-w-x /etc/cron.allow)"
rhel_5_1_8_temp_1=$?
rhel_5_1_8_temp_2="$(chmod g-r-w-x,o-r-w-x /etc/at.allow)"
rhel_5_1_8_temp_2=$?
if [[ "$rhel_5_1_8_temp_1" -eq 0 ]] && [[ "$rhel_5_1_8_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}5.1.8${reset} Ensure at/cron is restricted to authorized users\n${bold}${green}Remediated${reset} Ensure at/cron is restricted to authorized users"
else
  echo -e "${bold}${red}5.1.8${reset} Ensure at/cron is restricted to authorized users\n${bold}${yellow}UnableToRemidiate${reset} Ensure at/cron is restricted to authorized users"
fi

# Ensure permissions on /etc/ssh/sshd_config are configured
rhel_5_2_1="$(chmod g-r-w-x,o-r-w-x /etc/ssh/sshd_config)"
rhel_5_2_1=$?
if [[ "$rhel_5_2_1" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.1${reset} Ensure permissions on /etc/ssh/sshd_config are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/ssh/sshd_config are configured"
else
  echo -e "${bold}${red}5.2.1${reset} Ensure permissions on /etc/ssh/sshd_config are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/ssh/sshd_config are configured"
fi

# Ensure SSH Protocol is set to 2
rhel_5_2_2="$(echo "Protocol 2" >> /etc/ssh/sshd_config)"
rhel_5_2_2=$?
if [[ "$rhel_5_2_2" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.2${reset} Ensure SSH Protocol is set to 2\n${bold}${green}Remediated${reset} Ensure SSH Protocol is set to 2"
else
  echo -e "${bold}${red}5.2.2${reset} Ensure SSH Protocol is set to 2\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH Protocol is set to 2"
fi

# Ensure SSH LogLevel is set to INFO
rhel_5_2_3="$(echo "LogLevel INFO" >> /etc/ssh/sshd_config)"
rhel_5_2_3=$?
if [[ "$rhel_5_2_3" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.3${reset} Ensure SSH LogLevel is set to INFO\n${bold}${green}Remediated${reset} Ensure SSH LogLevel is set to INFO"
else
  echo -e "${bold}${red}5.2.3${reset} Ensure SSH LogLevel is set to INFO\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH LogLevel is set to INFO"
fi

# Ensure SSH X11 forwarding is disabled
rhel_5_2_4="$(echo "X11Forwarding no" >> /etc/ssh/sshd_config)"
rhel_5_2_4=$?
if [[ "$rhel_5_2_4" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.4${reset} Ensure SSH X11 forwarding is disabled\n${bold}${green}Remediated${reset} Ensure SSH X11 forwarding is disabled"
else
  echo -e "${bold}${red}5.2.4${reset} Ensure SSH X11 forwarding is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH X11 forwarding is disabled"
fi

# Ensure SSH MaxAuthTries is set to 4 or less
rhel_5_2_5="$(echo "MaxAuthTries 4" >> /etc/ssh/sshd_config)"
rhel_5_2_5=$?
if [[ "$rhel_5_2_5" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.5${reset} Ensure SSH MaxAuthTries is set to 4 or less\n${bold}${green}Remediated${reset} Ensure SSH MaxAuthTries is set to 4 or less"
else
  echo -e "${bold}${red}5.2.5${reset} Ensure SSH MaxAuthTries is set to 4 or less\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH MaxAuthTries is set to 4 or less"
fi

# Ensure SSH IgnoreRhosts is enabled
rhel_5_2_6="$(echo "IgnoreRhosts yes" >> /etc/ssh/sshd_config)"
rhel_5_2_6=$?
if [[ "$rhel_5_2_6" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.6${reset} Ensure SSH IgnoreRhosts is enabled\n${bold}${green}Remediated${reset} Ensure SSH IgnoreRhosts is enabled"
else
  echo -e "${bold}${red}5.2.6${reset} Ensure SSH IgnoreRhosts is enabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH IgnoreRhosts is enabled"
fi

# Ensure SSH HostbasedAuthentication is disabled
rhel_5_2_7="$(echo "HostbasedAuthentication no" >> /etc/ssh/sshd_config)"
rhel_5_2_7=$?
if [[ "$rhel_5_2_7" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.7${reset} Ensure SSH HostbasedAuthentication is disabled\n${bold}${green}Remediated${reset} Ensure SSH HostbasedAuthentication is disabled"
else
  echo -e "${bold}${red}5.2.7${reset} Ensure SSH HostbasedAuthentication is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH HostbasedAuthentication is disabled"
fi

# Ensure SSH root login is disabled
rhel_5_2_8="$(echo "PermitRootLogin no" >> /etc/ssh/sshd_config)"
rhel_5_2_8=$?
if [[ "$rhel_5_2_8" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.8${reset} Ensure SSH root login is disabled\n${bold}${green}Remediated${reset} Ensure SSH root login is disabled"
else
  echo -e "${bold}${red}5.2.8${reset} Ensure SSH root login is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH root login is disabled"
fi

# Ensure SSH PermitEmptyPasswords is disabled
rhel_5_2_9="$(echo "PermitEmptyPasswords no" >> /etc/ssh/sshd_config)"
rhel_5_2_9=$?
if [[ "$rhel_5_2_9" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.9${reset} Ensure SSH PermitEmptyPasswords is disabled\n${bold}${green}Remediated${reset} Ensure SSH PermitEmptyPasswords is disabled"
else
  echo -e "${bold}${red}5.2.9${reset} Ensure SSH PermitEmptyPasswords is disabled\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH PermitEmptyPasswords is disabled"
fi

# Ensure SSH PermitUserEnvironment is disabled
rhel_5_2_10="$(echo "PermitUserEnvironment no" >> /etc/ssh/sshd_config)"
rhel_5_2_10=$?
if [[ "$rhel_5_2_10" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.10${reset} Ensure SSH PermitUserEnvironment is disable\n${bold}${green}Remediated${reset} Ensure SSH PermitUserEnvironment is disable"
else
  echo -e "${bold}${red}5.2.10${reset} Ensure SSH PermitUserEnvironment is disable\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH PermitUserEnvironment is disable"
fi

'''
# Ensure only approved ciphers are used
egrep -q "^(\s*)Ciphers\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)Ciphers\s+\S+(\s*#.*)?\s*$/\Ciphers aes256-ctr,aes192-ctr,aes128-ctr\2/" /etc/ssh/sshd_config || echo "Ciphers aes256-ctr,aes192-ctr,aes128-ctr" >> /etc/ssh/sshd_config
echo -e "${bold}${red}1.7.1.1${reset} Ensure only approved ciphers are used\n${bold}${green}Remediated${reset} Ensure only approved ciphers are used"
'''

# Ensure only approved MAC algorithms are used
rhel_5_2_11="$(echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com" >> /etc/ssh/sshd_config)"
rhel_5_2_11=$?
if [[ "$rhel_5_2_11" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.11${reset} Ensure only approved MAC algorithms are used\n${bold}${green}Remediated${reset} Ensure only approved MAC algorithms are used"
else
  echo -e "${bold}${red}5.2.11${reset} Ensure only approved MAC algorithms are used\n${bold}${yellow}UnableToRemidiate${reset} Ensure only approved MAC algorithms are used"
fi


# Ensure SSH Idle Timeout Interval is configured
rhel_5_2_12_temp_1="$(echo "ClientAliveInterval 300" >> /etc/ssh/sshd_config)"
rhel_5_2_12_temp_1=$?
rhel_5_2_12_temp_2="$(echo "ClientAliveCountMax 3" >> /etc/ssh/sshd_config)"
rhel_5_2_12_temp_2=$?
if [[ "$rhel_5_2_12_temp_1" -eq 0 ]] && [[ "$rhel_5_2_12_temp_2" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.12${reset} Ensure SSH Idle Timeout Interval is configured\n${bold}${green}Remediated${reset} Ensure SSH Idle Timeout Interval is configured"
else
  echo -e "${bold}${red}5.2.12${reset} Ensure SSH Idle Timeout Interval is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH Idle Timeout Interval is configured"
fi

# Ensure SSH LoginGraceTime is set to one minute or less
rhel_5_2_13="$(echo "LoginGraceTime 60" >> /etc/ssh/sshd_config)"
rhel_5_2_13=$?
if [[ "$rhel_5_2_13" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.13${reset} Ensure SSH LoginGraceTime is set to one minute or less\n${bold}${green}Remediated${reset} Ensure SSH LoginGraceTime is set to one minute or less"
else
  echo -e "${bold}${red}5.2.13${reset} Ensure SSH LoginGraceTime is set to one minute or less\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH LoginGraceTime is set to one minute or less"
fi

# Ensure SSH warning banner is configured
rhel_5_2_15="$(echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config)"
rhel_5_2_15=$?
if [[ "$rhel_5_2_15" -eq 0 ]]; then
  echo -e "${bold}${red}5.2.15${reset} Ensure SSH warning banner is configured\n${bold}${green}Remediated${reset} Ensure SSH warning banner is configured"
else
  echo -e "${bold}${red}5.2.15${reset} Ensure SSH warning banner is configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure SSH warning banner is configured"
fi

# Ensure password creation requirements are configured
rhel_5_3_1_temp_1="$(echo "minlen=14" >> /etc/security/pwquality.conf)"
rhel_5_3_1_temp_1=$?
rhel_5_3_1_temp_2="$(echo "dcredit=-1" >> /etc/security/pwquality.conf)"
rhel_5_3_1_temp_2=$?
rhel_5_3_1_temp_3="$(echo "ucredit=-1" >> /etc/security/pwquality.conf)"
rhel_5_3_1_temp_3=$?
rhel_5_3_1_temp_4="$(echo "ocredit=-1" >> /etc/security/pwquality.conf)"
rhel_5_3_1_temp_4=$?
rhel_5_3_1_temp_5="$(echo "lcredit=-1" >> /etc/security/pwquality.conf)"
rhel_5_3_1_temp_5=$?
rhel_5_3_1_temp_6="$(echo "password requisite pam_pwquality.so try_first_pass retry=3" >> /etc/pam.d/system-auth)"
rhel_5_3_1_temp_6=$?
rhel_5_3_1_temp_7="$(echo "password requisite pam_pwquality.so try_first_pass retry=3" >> /etc/pam.d/password-auth)"
rhel_5_3_1_temp_7=$?
if [[ "$rhel_5_3_1_temp_1" -eq 0 ]] && [[ "$rhel_5_3_1_temp_2" -eq 0 ]] && [[ "$rhel_5_3_1_temp_3" -eq 0 ]] && [[ "$rhel_5_3_1_temp_4" -eq 0 ]] && [[ "$rhel_5_3_1_temp_5" -eq 0 ]] && [[ "$rhel_5_3_1_temp_6" -eq 0 ]] && [[ "$rhel_5_3_1_temp_7" -eq 0 ]]; then
  echo -e "${bold}${red}5.3.1${reset} Ensure password creation requirements are configured\n${bold}${green}Remediated${reset} Ensure password creation requirements are configured"
else
  echo -e "${bold}${red}5.3.1${reset} Ensure password creation requirements are configured\n${bold}${green}Remediated${reset} Ensure password creation requirements are configured"
fi

'''
# Ensure password reuse is limited
egrep -q "^\s*password\s+sufficient\s+pam_unix.so(\s+.*)$" /etc/pam.d/system-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+remember=[0-9]+)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1remember=5 \2/ }' /etc/pam.d/system-auth && sed -ri 's/(^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*\s+)remember=[0-9]+(\s+.*)?$/\1remember=5\3/' /etc/pam.d/system-auth || echo Ensure\ password\ reuse\ is\ limited - /etc/pam.d/system-auth not configured.
egrep -q "^\s*password\s+sufficient\s+pam_unix.so(\s+.*)$" /etc/pam.d/password-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+remember=[0-9]+)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1remember=5 \2/ }' /etc/pam.d/password-auth && sed -ri 's/(^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*\s+)remember=[0-9]+(\s+.*)?$/\1remember=5\3/' /etc/pam.d/password-auth || echo Ensure\ password\ reuse\ is\ limited - /etc/pam.d/password-auth not configured.
echo -e "${bold}${red}5.3.3${reset} Ensure password reuse is limited\n${bold}${green}Remediated${reset} Ensure password reuse is limited"

# Ensure password hashing algorithm is SHA-512
egrep -q "^\s*password\s+sufficient\s+pam_unix.so\s+" /etc/pam.d/system-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+sha512)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1sha512 \2/ }' /etc/pam.d/system-auth || echo Ensure\ password\ hashing\ algorithm\ is\ SHA-512 - /etc/pam.d/password-auth not configured.
egrep -q "^\s*password\s+sufficient\s+pam_unix.so\s+" /etc/pam.d/password-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+sha512)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1sha512 \2/ }' /etc/pam.d/password-auth || echo Ensure\ password\ hashing\ algorithm\ is\ SHA-512 - /etc/pam.d/password-auth not configured.
echo -e "${bold}${red}5.3.4${reset} Ensure password hashing algorithm is SHA-512\n${bold}${green}Remediated${reset} Ensure password hashing algorithm is SHA-512"
'''
# Ensure password expiration is 90 days or less
rhel_5_4_1_1="$(echo "PASS_MAX_DAYS 90" >> /etc/login.defs)"
rhel_5_4_1_1=$?
getent passwd | cut -f1 -d ":" | xargs -n1 chage --maxdays 90
if [[ "$rhel_5_4_1_1" -eq 0 ]]; then
  echo -e "${bold}${red}5.4.1.1${reset} Ensure password expiration is 90 days or less\n${bold}${green}Remediated${reset} Ensure password expiration is 90 days or less"
else
  echo -e "${bold}${red}5.4.1.1${reset} Ensure password expiration is 90 days or less\n${bold}${green}Remediated${reset} Ensure password expiration is 90 days or less"
fi

# Ensure minimum days between password changes is 7 or more
rhel_5_4_1_2="$(echo "PASS_MIN_DAYS 7" >> /etc/login.defs)"
rhel_5_4_1_2=$?
getent passwd | cut -f1 -d ":" | xargs -n1 chage --mindays 7
if [[ "$rhel_5_4_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}5.4.1.2${reset} Ensure minimum days between password changes is 7 or more\n${bold}${green}Remediated${reset} Ensure minimum days between password changes is 7 or more"
else
  echo -e "${bold}${red}5.4.1.2${reset} Ensure minimum days between password changes is 7 or more\n${bold}${yellow}UnableToRemidiate${reset} Ensure minimum days between password changes is 7 or more"
fi

# Ensure password expiration warning days is 7 or more
rhel_5_4_1_3="$(echo "PASS_WARN_AGE 7" >> /etc/login.defs)"
rhel_5_4_1_3=$?
getent passwd | cut -f1 -d ":" | xargs -n1 chage --warndays 7
if [[ "$rhel_5_4_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}5.4.1.3${reset} Ensure password expiration warning days is 7 or more\n${bold}${green}Remediated${reset} Ensure password expiration warning days is 7 or more"
else
  echo -e "${bold}${red}5.4.1.3${reset} Ensure password expiration warning days is 7 or more\n${bold}${yellow}UnableToRemidiate${reset} Ensure password expiration warning days is 7 or more"
fi

# Ensure inactive password lock is 30 days or less
rhel_5_4_1_4="$(useradd -D -f 30)"
rhel_5_4_1_4=$?
getent passwd | cut -f1 -d ":" | xargs -n1 chage --inactive 30
if [[ "$rhel_5_4_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}5.4.1.4${reset} Ensure inactive password lock is 30 days or less\n${bold}${green}Remediated${reset} Ensure inactive password lock is 30 days or less"
else
  echo -e "${bold}${red}5.4.1.4${reset} Ensure inactive password lock is 30 days or less\n${bold}${green}Remediated${reset} Ensure inactive password lock is 30 days or less"
fi

# Ensure system accounts are non-login
for user in `awk -F: '($3 < 1000) {print $1 }' /etc/passwd`; do
  if [ $user != "root" ]
  then
    /usr/sbin/usermod -L $user
    if [ $user != "sync" ] && [ $user != "shutdown" ] && [ $user != "halt" ]
    then
      /usr/sbin/usermod -s /sbin/nologin $user
    fi
  fi
done
echo -e "${bold}${red}5.4.2${reset} Ensure system accounts are non-login\n${bold}${green}Remediated${reset} Ensure system accounts are non-login"

# Ensure default group for the root account is GID 0
rhel_5_4_3="$(usermod -g 0 root)"
rhel_5_4_3=$?
if [[ "$rhel_5_4_3" -eq 0 ]]; then
  echo -e "${bold}${red}5.4.3${reset} Ensure default group for the root account is GID 0\n${bold}${green}Remediated${reset} Ensure default group for the root account is GID 0"
else
  echo -e "${bold}${red}5.4.3${reset} Ensure default group for the root account is GID 0\n${bold}${green}Remediated${reset} Ensure default group for the root account is GID 0"
fi

# Ensure default user umask is 027 or more restrictive
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/bashrc && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 077\2/" /etc/bashrc || echo "umask 077" >> /etc/bashrc
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/profile && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 077\2/" /etc/profile || echo "umask 077" >> /etc/profile
echo -e "${bold}${red}5.4.4${reset} Ensure default user umask is 027 or more restrictive\n${bold}${green}Remediated${reset} Ensure default user umask is 027 or more restrictive"

# Ensure access to the su command is restricted
egrep -q "^\s*auth\s+required\s+pam_wheel.so(\s+.*)?$" /etc/pam.d/su && sed -ri '/^\s*auth\s+required\s+pam_wheel.so(\s+.*)?$/ { /^\s*auth\s+required\s+pam_wheel.so(\s+\S+)*(\s+use_uid)(\s+.*)?$/! s/^(\s*auth\s+required\s+pam_wheel.so)(\s+.*)?$/\1 use_uid\2/ }' /etc/pam.d/su || echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su
echo -e "${bold}${red}5.6${reset} Ensure access to the su command is restricted\n${bold}${green}Remediated${reset} Ensure access to the su command is restricted"

echo -e "${bold}${pink}------RHEL 7 - System Maintenance------${reset}"

# Ensure permissions on /etc/passwd are configured
rhel_6_1_2="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/passwd)"
rhel_6_1_2=$?
if [[ "$rhel_6_1_2" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.2${reset} Ensure permissions on /etc/passwd are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/passwd are configured"
else
  echo -e "${bold}${red}6.1.2${reset} Ensure permissions on /etc/passwd are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/passwd are configured"
fi

# Ensure permissions on /etc/shadow are configured
rhel_6_1_3="$(chmod -t,u-x-s,g-w-x-s,o-r-w-x /etc/shadow)"
rhel_6_1_3=$?
if [[ "$rhel_6_1_3" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.3${reset} Ensure permissions on /etc/shadow are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/shadow are configured"
else
  echo -e "${bold}${red}6.1.3${reset} Ensure permissions on /etc/shadow are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/shadow are configured"
fi

# Ensure permissions on /etc/group are configured
rhel_6_1_4="$(chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/group)"
rhel_6_1_4=$?
if [[ "$rhel_6_1_4" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.4${reset} Ensure permissions on /etc/group are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/group are configured"
else
  echo -e "${bold}${red}6.1.4${reset} Ensure permissions on /etc/group are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/group are configured"
fi

# Ensure permissions on /etc/gshadow are configured
rhel_6_1_5="$(chmod -t,u-x-s,g-w-x-s,o-r-w-x /etc/gshadow)"
rhel_6_1_5=$?
if [[ "$rhel_6_1_5" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.5${reset} Ensure permissions on /etc/gshadow are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/gshadow are configured"
else
  echo -e "${bold}${red}6.1.5${reset} Ensure permissions on /etc/gshadow are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/gshadow are configured"
fi

# Ensure permissions on /etc/passwd- are configured
rhel_6_1_6="$(chmod -t,u-x-s,g-r-w-x-s,o-r-w-x /etc/passwd-)"
rhel_6_1_6=$?
if [[ "$rhel_6_1_6" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.6${reset} Ensure permissions on /etc/passwd- are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/passwd- are configured"
else
  echo -e "${bold}${red}6.1.6${reset} Ensure permissions on /etc/passwd- are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/passwd- are configured"
fi

# Ensure permissions on /etc/shadow- are configured
rhel_6_1_7="$(chmod -t,u-x-s,g-r-w-x-s,o-r-w-x /etc/shadow-)"
rhel_6_1_7=$?
if [[ "$rhel_6_1_7" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.7${reset} Ensure permissions on /etc/shadow- are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/shadow- are configured"
else
  echo -e "${bold}${red}6.1.7${reset} Ensure permissions on /etc/shadow- are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/shadow- are configured"
fi

# Ensure permissions on /etc/group- are configured
rhel_6_1_8="$(chmod -t,u-x-s,g-r-w-x-s,o-r-w-x /etc/group-)"
rhel_6_1_8=$?
if [[ "$rhel_6_1_8" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.8${reset} Ensure permissions on /etc/group- are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/group- are configured"
else
  echo -e "${bold}${red}6.1.8${reset} Ensure permissions on /etc/group- are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/group- are configured"
fi

# Ensure permissions on /etc/gshadow- are configured
rhel_6_1_9="$(chmod -t,u-x-s,g-r-w-x-s,o-r-w-x /etc/gshadow-)"
rhel_6_1_9=$?
if [[ "$rhel_6_1_9" -eq 0 ]]; then
  echo -e "${bold}${red}6.1.9${reset} EEnsure permissions on /etc/gshadow- are configured\n${bold}${green}Remediated${reset} Ensure permissions on /etc/gshadow- are configured"
else
  echo -e "${bold}${red}6.1.9${reset} EEnsure permissions on /etc/gshadow- are configured\n${bold}${yellow}UnableToRemidiate${reset} Ensure permissions on /etc/gshadow- are configured"
fi

# Ensure no legacy &quot;+&quot; entries exist in /etc/passwd
rhel_6_2_2="$(sed -ri '/^\+:.*$/ d' /etc/passwd)"
rhel_6_2_2=$?
if [[ "$rhel_6_2_2" -eq 0 ]]; then
  echo -e "${bold}${red}6.2.2${reset} Ensure no legacy + entries exist in /etc/passwd\n${bold}${green}Remediated${reset} Ensure no legacy + entries exist in /etc/passwd"
else
  echo -e "${bold}${red}6.2.2${reset} Ensure no legacy + entries exist in /etc/passwd\n${bold}${yellow}UnableToRemidiate${reset} Ensure no legacy + entries exist in /etc/passwd"
fi

# Ensure no legacy &quot;+&quot; entries exist in /etc/shadow
rhel_6_2_3="$(sed -ri '/^\+:.*$/ d' /etc/shadow)"
rhel_6_2_3=$?
if [[ "$rhel_6_2_3" -eq 0 ]]; then
  echo -e "${bold}${red}6.2.3${reset} Ensure no legacy + entries exist in /etc/shadow\n${bold}${green}Remediated${reset} Ensure no legacy + entries exist in /etc/shadowd"
else
  echo -e "${bold}${red}6.2.3${reset} Ensure no legacy + entries exist in /etc/shadow\n${bold}${yellow}UnableToRemidiate${reset} Ensure no legacy + entries exist in /etc/shadowd"
fi

# Ensure no legacy &quot;+&quot; entries exist in /etc/group
rhel_6_2_4="$(sed -ri '/^\+:.*$/ d' /etc/group)"
rhel_6_2_4=$?
if [[ "$rhel_6_2_4" -eq 0 ]]; then
  echo -e "${bold}${red}6.2.4${reset} Ensure no legacy + entries exist in /etc/group\n${bold}${green}Remediated${reset} Ensure no legacy + entries exist in /etc/group"
else
  echo -e "${bold}${red}6.2.4${reset} Ensure no legacy + entries exist in /etc/group\n${bold}${yellow}UnableToRemidiate${reset} Ensure no legacy + entries exist in /etc/group"
fi
