# Simple bash script to take screen shot from your ubuntu desktop

### Depency packeges
Install them by following commands:
```bash
$ sudo apt install scrot
$ sudo apt install jpegoptim
```

### Run 
Run script by this command:
```bash
$ nohup sh screen_shotter.sh &
```
### wayland issue
echo $XDG_SESSION_TYPE
if it's wayland then swith to x11
sudo nano /etc/gdm3/custom.conf
Uncomment this line (remove the #):
#WaylandEnable=false
