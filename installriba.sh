apt-get install davfs2 -y
mkdir /media/box.com
nano /etc/fstab
https://dav.box.com/dav /media/box.com davfs defaults,rw,user,noauto 0 0
nano /etc/davfs2/davfs2.conf
dav_group users
use_locks 0
nano /etc/davfs2/secrets
https://dav.box.com/dav xwave21@gmail.com bianca88
mount /media/box.com

