echo "/dev/mapper/almalinux-home /home xfs defaults,usrquota,grpquota 0 0" >> /etc/fstab
mount -o remount /home
quotacheck -cug /home
quotaon /home

for i in {01..20}; do
    setquota -u u${i} 1048576 2097152 0 0 /home
done