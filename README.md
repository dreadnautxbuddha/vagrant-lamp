# Vagrant LAMP

A very basic implementation of a LAMP (Linux, Apache, MySQL, PHP) stack using Vagrant for web development. As of writing only Ubuntu/Xenial 16.04 is used but more might be added in the future.

### Setup
```sh
$ cd ubuntu-xenial16.04
<!--php versions are organized by directory, just choose one.-->
$ cd <php5.6|php7.1>
$ vagrant up
```

Provisioners have been segregated for easier customization. Just modify the Vagrantfiles to your liking.
