# Backup (from a container)

`sudo docker exec -it -u git -w /tmp <container> bash -c '/usr/local/bin/gitea dump -c /data/gitea/conf/app.ini'`
`docker cp 509f4e4da364:/tmp/gitea-dump-<date>.zip .`