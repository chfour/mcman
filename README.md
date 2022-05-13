# mcman

A set of bash scripts for managing a Minecraft server.
Made to be simple, easy and fast to set up and highly customizable.

Runs servers in GNU Screen sessions.

And could probably easily run other game servers, not only Minecraft.

## how to use

### installing

You will of course need a java runtime environment installed on your machine. You can install the openjdk headless version.

Also ensure that `screen` is installed.

First of all, create a directory somewhere for your server.

You will also need to download a server .jar first. I, and pretty much everyone else recommend [Paper](https://papermc.io/).

Right now your directory structure should look something like this:

```text
 minecraft-server/ (your server's root)
  - paper.jar (the only file)
```

Now, in the root directory of the server (in this case `minecraft-server/`) clone this repository.

Run:

```shell
git clone https://github.com/chfour/mcman.git
```

A new directory called, well, `mcman` should now exist.

After cloning the repo you can symlink `mcman/manager` to your server root.

To do that, from `minecraft-server` run:

```shell
ln -s mcman/manager .
```

Now apply the default configuration file (do NOT edit `mcman.conf.dist`!):

```shell
cp mcman.conf.dist mcman.conf
```

You'll probably also want to change the arguments passed to java: to do that, modify the config file.

Everything done! Now to run your new server:

```shell
./manager start
```

You will of course have to accept the eula and configure your server.

### after installation

You can configure mcman by editing `mcman/mcman.conf`. The options there are pretty self-explanatory and have comments also explaining them.

Here the commands supported by mcman:

* `./manager start` - start the server
* `./manager stop` - stops the server after sending a message (see `mcman.conf` for details)
* `./manager status` - get the status of a server (`running` or `stopped`)
* `./manager screen` - shows the console of a server running in the background
* `./manager send "say Hello World!"` - runs `say Hello World!` in a running server
