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

### homebrew_cask syntax error

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

### python exception

```
Exception:
Traceback (most recent call last):
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/basecommand.py", line 215, in main
    status = self.run(options, args)
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/commands/install.py", line 342, in run
    prefix=options.prefix_path,
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/req/req_set.py", line 784, in install
    **kwargs
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/req/req_install.py", line 851, in install
    self.move_wheel_files(self.source_dir, root=root, prefix=prefix)
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/req/req_install.py", line 1064, in move_wheel_files
    isolated=self.isolated,
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/wheel.py", line 345, in move_wheel_files
    clobber(source, lib_dir, True)
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/wheel.py", line 316, in clobber
    ensure_dir(destdir)
  File "/Library/Python/2.7/site-packages/pip-9.0.1-py2.7.egg/pip/utils/__init__.py", line 83, in ensure_dir
    os.makedirs(path)
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/os.py", line 157, in makedirs
    mkdir(name, mode)
OSError: [Errno 13] Permission denied: '/Library/Python/2.7/site-packages/fabric'
```

Please try following command.

```bash
$ brew link --overwrite python
```

The command creates new sym links.

```
error in cryptography setup command: Invalid environment marker: python_version < '3' 
```

```bash
$ sudo pip install --upgrade setuptools
$ xcode-select --install
```
