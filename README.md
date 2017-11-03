# SSH Speak
Talk to a peer over SSH with espeak.

## Installation
First you need espeak:

On Ubuntu/Debian or apt based distros:
```shell
sudo apt-get install espeak
```
On Archlinux based distros:
```shell
sudo pacman -S espeak
```
On Fedora or RPM based distros, e.g.
```shell
dnf install espeak
```

Then install the application
```shell
gem install ssh_speak
```

## Usage
Basic usage:
```shell
ssh-speak [user]@[host]:[port] [options]
```

For example, speak to user `albert` on the server `68.179.53.103` on port `369`
```shell
ssh-speak albert@68.179.53.103:369
```
and it will propmpt you for alberts password

If you'd like the messages you send to be played back to you, simply add the `--playback` option, e.g.
```shell
ssh-speak user@host:22 --playback
```

