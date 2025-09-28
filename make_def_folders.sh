mkdir -p /etc/skel/Desktop
mkdir -p /etc/skel/Documents

for i in {01..20}; do
    cp -r /etc/skel/* /home/u${i}/
    chown -R u${i}:u${i} /home/u${i}
done

for teacher in micha zim pau; do
    cp -r /etc/skel/* /home/$teacher/
    chown -R $teacher:$teacher /home/$teacher
done