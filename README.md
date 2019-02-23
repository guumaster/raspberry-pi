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

### Install missing software

- Install [Node.js](https://thisdavej.com/beginners-guide-to-installing-node-js-on-a-raspberry-pi/]
- Install [Berryconda](https://github.com/jjhelmus/berryconda)


run `add-extras.sh`


## Raspberry Pi 2 Model B 1.1


Pinout image:


![https://raspberry-projects.com/pi/wp-content/uploads/2015/03/rpi2_model_b_plus_io_pinouts.jpg](https://raspberry-projects.com/pi/wp-content/uploads/2015/03/rpi2_model_b_plus_io_pinouts.jpg)


<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5OTYwNTIxNDFdfQ==
-->