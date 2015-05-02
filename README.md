# Ubuntu Trusty sshd

Ubuntu Trusty image with sshd

## Overview

Ubuntu Trusty simple image with :  

+ sshd
+ locale en_US.UTF-8
+ language-pack-en language-pack-en-base

## Pull Image

```
$ sudo docker pull classcat/ubuntu-sshd:trusty
```

## Usage

```
$ sudo docker run -d --name (container name) -p 2022:22 \  
  -e password=(root password) classcat/ubuntu-sshd:trusty
```
