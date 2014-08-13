### Import submodules for the first time
```
git submodule init
git submodule update

# or the following if system does not have certificates installed:
# env GIT_SSL_NO_VERIFY=true git submodule update
```

### Create soft links to config files
```
mv vim-config .vim
cd .vim
ln -s `realpath .vimrc` ../.vimrc
ln -s `realpath .tmux.conf` ../.tmux.conf
```

test
