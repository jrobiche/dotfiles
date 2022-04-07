# Using this Repository (on a new machine)

Set the `dotfiles` alias for the current shell:

```bash
$ alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Clone down this repository into the `~/.dotfiles` directory:

```bash
$ git clone --bare <this_git_repository_url> $HOME/.dotfiles
```

Checkout the files in the `~/.dotfiles` repository into the `$HOME` directory:

```bash
$ dotfiles config --local status.showUntrackedFiles no
$ dotfiles checkout
```

# Creating this Repository

Create a bare git repository, i.e. `~/.dotfiles` to store the files:

```bash
$ git init --bare $HOME/.dotfiles
```

Create an alias `dotfiles` to interact with the `~/.dotfiles` repository:

```bash
$ echo "alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.bash_aliases
$ . ~/.bash_aliases
```

Prevent the `~/.dotfiles` repository from showing files that are note explicitly added:

```bash
$ dotfiles config --local status.showUntrackedFiles no
```

Set the remote url:

```bash
$ dotfiles remote add origin <your_git_repository_url>
```

Now this repository can be used with the `dotfiles` alias. For example:

```bash
$ dotfiles status
$ dotfiles add .bashrc
$ dotfiles commit -m "add .bashrc"
$ dotfiles push origin main
```

# Fonts

- IBM Plex - https://github.com/IBM/plex/
- DejaVu - https://archlinux.org/packages/extra/any/ttf-dejavu/
- Kosugi (MotoyaLCedar) - https://fonts.google.com/specimen/Kosugi/
- Noto - https://archlinux.org/packages/extra/any/noto-fonts/
- Noto CJK - https://archlinux.org/packages/extra/any/noto-fonts-cjk/
- Noto Emoji - https://archlinux.org/packages/extra/any/noto-fonts-emoji/
- Noto Extra - https://archlinux.org/packages/extra/any/noto-fonts-extra/

# Extras

UTF-8 file (useful for testing fonts) - https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt

# Sources

[Ask HN: What do you use to manage dotfiles? | Hacker News](https://news.ycombinator.com/item?id=11070797)

[How to store dotfiles | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
