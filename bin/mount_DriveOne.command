mkdir /Volumes/DriveOne
mount_nfs -o soft,timeo=900,retrans=3,vers=3,proto=tcp nas-meduz.local:/DriveOne /Volumes/DriveOne
#killall Terminal