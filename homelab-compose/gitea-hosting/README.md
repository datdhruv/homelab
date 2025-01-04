# Backup (from a container)

```shell
sudo docker exec -it -u git -w /tmp <container> bash -c '/usr/local/bin/gitea dump -c /data/gitea/conf/app.ini'
```
```shell
# open bash session in container
docker exec --user git -it <container-id> bash
# unzip your backup file within the container
unzip gitea-dump-1610949662.zip
cd gitea-dump-1610949662
# restore the gitea data
mv data/* /data/gitea
# restore the repositories itself
mv repos/* /data/git/repositories/
# adjust file permissions
chown -R git:git /data
# Regenerate Git Hooks
/usr/local/bin/gitea -c '/data/gitea/conf/app.ini' admin regenerate hooks
```

```shell
docker cp <container-id>:/tmp/gitea-dump-<date>.zip .
```