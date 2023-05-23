# Simple bash script to take screen shot from you ubuntu environment

### Project description:
This script automatically takes screenshots from your desktop every minute (working days, between 9 AM to 18 PM). You just need to follow the next steps. Images are well-resized and optimized to reduce network traffic consumption while sending over FTP. (The final size of each image will be under 52KB, hence total directory size for each working day is less than 25MB)

### Depency packeges
Install them by following commands:
```bash
$ sudo apt install scrot
$ sudo apt install jpegoptim
```

### Set a cron job to run the script
Add following line to your crontab
```bash
$ * * * * * /{path_to_file}/screen_shotter.sh 
```