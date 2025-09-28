
for i in {01..20}; do
    cat > /home/u${i}/.vnc/xstartup << 'EOF'
#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec /etc/X11/xinit/xinitrc
EOF
    chmod +x /home/u${i}/.vnc/xstartup
    chown u${i}:u${i} /home/u${i}/.vnc/xstartup
done

for teacher in micha zim pau; do
    cat > /home/$teacher/.vnc/xstartup << 'EOF'
#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec /etc/X11/xinit/xinitrc
EOF
    chmod +x /home/$teacher/.vnc/xstartup
    chown $teacher:$teacher /home/$teacher/.vnc/xstartup
done