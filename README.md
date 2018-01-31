# SSH Speak
Talk to a peer over SSH with espeak.

## Installation

### Installing espeak
On Ubuntu/Debian or apt based distros:
```shell
sudo apt-get install espeak
```
On Arch based distros:
```shell
sudo pacman -S espeak
```
On Fedora or RPM based distros, e.g.
```shell
dnf install espeak
```

### Installing the Gem

Then install the application
```shell
gem install ssh_speak --no-ri --no-rdoc
```
make sure you have the install directory in your `$PATH`, gem will warn you if you don't.

## Usage
Basic usage:
```shell
ssh-speak [user]@[host]:[port] [options] [[-o] [espeak-options]]
```
- `[user]` is the user you want to speak to.
- `[host]` is the name of the machine you want to connect to
- `[port]` is optional, it will default to `22`. Important if the user you're connecting to's sshd does not run on port `22`.
- `[options]` include:
  - `--playback` which will make the program say back to you what you wrote.
  - `--wait` will make the console hang until espeak has finished talking on the other computer
- `-o [options]` this argument must always be last, every subsequent argument (option) after `-o` will be passed in to `espeak`, so you could say things like `-v finnish` to get a finnish voice; all such espeak options must come after `-o`

For example, speak to user `albert` on the server `68.179.53.103` on port `369`
```shell
ssh-speak albert@68.179.53.103:369
```
and it will prompt you for Albert's password

If you'd like the messages you send to be played back to you, and you want to wait until it finishes speaking simply add the `--playback` and `--wait` options, e.g.
```shell
ssh-speak user@host:22 --playback --wait
```

As an example for the `-o` option, say you want to sound like a drunk Finnish person. Make sure you have slowed speech (`-s 50`, measured in words-per-minute, default is 175); you're loud (`-a 200` amplitude, default is 100); you're rather low pitch (`-p 20`, pitch, default is 50); and of course, you're Finnish (`-v finnish`, voice, default is `english`):
```shell
ssh-speak $(whoami)@localhost --wait -o -s 50 -a 200 -p 20 -v finnish
```
and try it out (make sure you have `sshd` running for yourself here, at port 22):
```shell
(talk)> perkele
```
