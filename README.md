# setup-macOS
set up script and ansible

## Usage

```bash
$ curl -sL https://github.com/yukihirai0505/set-up-macOS/archive/master.tar.gz | tar xvz "*"
$ cd set-up-macOS-master
$ ./setUp-macOS.sh
```
## Environment

- ProductName:	Mac OS X
- ProductVersion:	10.12.4

## Trouble Shooting

If you get like following error

```
Error: /usr/local/Homebrew/Library/Homebrew/cask/lib/hbc/cask_loader.rb:9: syntax error
```

Please try following command.

```bash
$ brew uninstall brew-cask && brew tap caskroom/cask
$ brew update-reset && brew update
$ ./setUp-macOS.sh
```
