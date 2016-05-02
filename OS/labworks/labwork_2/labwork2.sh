du -shm $(grep -R $1 $2 | tr  ":" " " | awk '{print $1}')
pwd $(grep -R $1 $2 | tr  ":" " " | awk '{print $1}')
