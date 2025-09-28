for i in {01..20}; do
    useradd -m -s /bin/bash u${i}
    echo "u${i}:${i}" | chpasswd
    
    mkdir -p /home/u${i}/.vnc
    
    vnc_password="${i}${i}${i}"
    echo "$vnc_password" | vncpasswd -f > /home/u${i}/.vnc/passwd
    chmod 600 /home/u${i}/.vnc/passwd
    chown -R u${i}:u${i} /home/u${i}/.vnc
    
    echo "Created u${i} - login: ${i}, VNC: ${vnc_password}"
done