# Config

```sh
curl https://raw.githubusercontent.com/Wang-Yan-Hao/small_thing/refs/heads/main/config/.gitconfig -o ~/.gitconfig
curl https://raw.githubusercontent.com/Wang-Yan-Hao/small_thing/refs/heads/main/config/.vimrc -o ~/.vimrc
```

## Ubuntu bashrc

Append `.bashrc` content and curl the `.my_bashrc`.

```bash
# ... append below

if [ -f ~/.my_bashrc ]; then
    . ~/.my_bashrc
fi
```

```bash
curl https://raw.githubusercontent.com/Wang-Yan-Hao/small_thing/refs/heads/main/config/.my_bashrc -o ~/.my_bashrc
```

