##Create a Script

disable-c6.sh

```
#!/bin/bash
if [ "${1}" == "post" ]; then
 
# Disable c6 coming out of sleep
/opt/ZenStates-Linux/zenstates.py --c6-disable
fi
```

##Make it executable

```
chmod a+x disable-c6.sh
```

##Turn it into a service

```
sudo vim /etc/systemd/system/disable-c6.service
```

and paste

```
[Unit]
Description=Disable C6 on boot
After=default.target
 
[Service]
Type=oneshot
ExecStart=/opt/Ryzen/ZenStates-Linux/zenstates.py --c6-disable
 
[Install]
WantedBy=default.target
```

###Start it to disable C6 if it is currently enabled

```
systemctl start disable-c6.service
```

###And get it to run on boot

```
systemctl enable disable-c6.service
```
