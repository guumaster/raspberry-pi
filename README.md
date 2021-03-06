# Raspberry Pi 

This repo contains notes on how to setup and work with Raspberry Pi remotely.

## Prerequisites

### Setup SD Card

- Download an image from [RaspberryPi.org](https://www.raspberrypi.org/downloads/)
-  Download [Etcher app](https://www.balena.io/etcher/) and flash it into an SD
- **Important**: Add an empty file called `ssh` to enable remote ssh connections.

### Setup SSH
- On your ssh config set an alias to your Pi address on file `$HOME/.ssh/config`  with this content:

```
Host rpi
    HostName <YOUR_RASPBERRY_IP>
``` 

- Then copy your ssh credentials to the Pi:
```
ssh-copy-id pi@rpi
```
Now you can log into your Pi without a password prompt when you ssh into it:
```
ssh pi@rpi
```


**NOTE**: If you don't have ssh keys already generated, check this guide [Generating ssh keys](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)


## Once your Pi boot

### Install development software

- Install [Node.js](https://thisdavej.com/beginners-guide-to-installing-node-js-on-a-raspberry-pi/)
- Install [Berryconda](https://github.com/jjhelmus/berryconda)
- Install [Golang 1.11](http://www.elliotmaincourt.com/blog/running-go-1.11-on-raspberry-pi-3-with-raspbian/)

### Install extra software

To add common used software run this cmd:

```
$> install-extras.sh
```


## GPIO Info

### Pinout for Raspberry Pi 2 Model B 1.1


![pinouts](images/rpi-2-model-b-pinouts.png)

![image pinouts](https://raspberry-projects.com/pi/wp-content/uploads/2015/03/rpi2_model_b_plus_io_pinouts.jpg)


<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIzMzU2ODA4MSwtMTczNzUzMjM4MCwxNT
Q3NzIzOTY3LC0xOTk2MDUyMTQxXX0=
-->
