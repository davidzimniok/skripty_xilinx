
for i in {01..20}; do
    vnc_password="${i}${i}${i}"
    sudo -u u${i} bash -c "echo '$vnc_password' | vncpasswd -f > /home/u${i}/.vnc/passwd"
    chmod 600 /home/u${i}/.vnc/passwd
    chown u${i}:u${i} /home/u${i}/.vnc/passwd
    echo "Set VNC password for u${i}: $vnc_password"
done


for teacher in micha zim pau; do
    sudo -u $teacher bash -c "echo 'Agent007' | vncpasswd -f > /home/$teacher/.vnc/passwd"
    chmod 600 /home/$teacher/.vnc/passwd
    chown $teacher:$teacher /home/$teacher/.vnc/passwd
    echo "Set VNC password for $teacher: Agent007"
done