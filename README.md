# Vagrant LAMP

A very basic implementation of a LAMP (Linux, Apache, MySQL, PHP) stack using Vagrant originally for SugarCRM development, but is not limited to that. As of writing only Ubuntu/Xenial 16.04 is used but more might be added in the future.

### Getting started
```sh
$ cd ubuntu-xenial16.04
<!--php versions are organized by directory, just choose one.-->
$ cd php5.6
$ vagrant up
```

### Customization
Refer to Vagrant's [documentation](https://www.vagrantup.com/docs) for more information on using the _Vagrantfile_ included with the PHP stacks.

### Database
MySQL has been configured with a for-dev-only security and uses `root` as the admin user by default with a password of `Password01`

The provided setup serves only as a boilerplate and I highly suggest that you modify it to your liking.
