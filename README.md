# mcman

A set of bash scripts for managing a Minecraft server.
Made to be simple, easy and fast to set up and highly customizable.

Runs servers in GNU Screen sessions.

And could probably easily run other game servers, not only Minecraft.

## how to use

### installing

You will of course need java installed on your machine. For Debian and Debian-based distros you can install `openjdk-11-jre-headless`.

Also ensure that `screen` is installed.

First of all, create a directory somewhere for your server.

You will also need to download a server .jar first. I recommend [Paper](https://papermc.io/).

Right now your directory structure should look something like this:

```text
 minecraft-server/ (your server's root)
  |- logs/
  |- paper.jar
  |- server.properties
    ...
```

Now, in the root directory of the server (in this case `minecraft-server/`) clone this repository.

Run:

```shell
git clone https://github.com/chfour/mcman.git
```

A new directory called, well, `mcman` should now exist.

After cloning the repo you now need to symlink `mcman/mcman.conf` to your server root.

From `minecraft-server` run:

```shell
ln -s mcman/mcman.conf .
```

You'll probably also want to change the arguments passed to java: to do that, modify `mcman/scripts/server-run.sh`.

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

## contributing

If you want to contribute to this project, you absolutely can!

If you find a bug, but don't know how to fix it, or if you have a problem or maybe an idea, you can submit an issue. If you want to make direct changes, you can fork this repository, modify your fork, and then submit a pull request.
