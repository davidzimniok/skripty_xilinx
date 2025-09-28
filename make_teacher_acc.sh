for teacher in micha zim pau; do
    useradd -m -s /bin/bash $teacher
    echo "$teacher:Agent007" | chpasswd
    
    mkdir -p /home/$teacher/.vnc
    echo "Agent007" | vncpasswd -f > /home/$teacher/.vnc/passwd
    chmod 600 /home/$teacher/.vnc/passwd
    chown -R $teacher:$teacher /home/$teacher/.vnc
    
    echo "Created teacher: $teacher - password: Agent007"
done