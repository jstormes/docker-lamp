# docker-lamp
A Docker container with Linux, Apache, MariaDb, PHP and Cron.  For deploying thick containers.

---

# Quick Start Examples

### BASH (Linux/Mac OS X):

```docker run --rm -it -p 8080:80 -v $(pwd):/var/www/html jstormes/lamp```

### PowerShell (Windows)

```docker run --rm -it -p 8080:80 -v ${PWD}:/var/www/html jstormes/lamp```

### Windows CMD (Windows CMD)

```docker run --rm -it -p 8080:80 -v %cd%:/var/www/html jstormes/lamp```


### Using the Container

  These examples will serve your current directory on port 8080 so [http://localhost:8080](http://localhost:8080).  

  Press `[Ctl-C]` to stop the docker container.
  
---

# Quick Start with Interactive Bash inside the container

  This examples will serve your current directory on port 8080 so [http://localhost:8080](http://localhost:8080).  It 
will also drop you into a bash prompt inside the docker container.  It will use the latest version of PHP.

  I use this to run PHP Composer to know my composer environment will be correct.

  Type `exit` to stop the server and return to you host shell.

### BASH (Linux/Mac OS X):

```docker run --rm -it -p 8080:80 -v $(pwd):/var/www/html jstormes/lamp bash```

### PowerShell (Windows)

```docker run --rm -it -p 8080:80 -v ${PWD}:/var/www/html jstormes/lamp bash```

### Windows CMD (Windows CMD)

```docker run --rm -it -p 8080:80 -v %cd%:/var/www/html jstormes/lamp bash```

---

# Quick Start PHP 5.X with Interactive Bash inside the container

**_PHP 5.X is no longer supported!!!!!_**

  This examples will serve your current directory on port 8080 so [http://localhost:8080](http://localhost:8080).  It 
will also drop you into a bash prompt inside the docker container.  It will use the latest 5.X version of PHP.

  I use this to run PHP Composer to know my composer environment will be correct.

  Type `exit` to stop the server and return to you host shell.

### BASH (Linux/Mac OS X):

```docker run --rm -it -p 8080:80 -v $(pwd):/var/www/html jstormes/lamp:5 bash```

### PowerShell (Windows)

```docker run --rm -it -p 8080:80 -v ${PWD}:/var/www/html jstormes/lamp:5 bash```

### Windows CMD (Windows CMD)

```docker run --rm -it -p 8080:80 -v %cd%:/var/www/html jstormes/lamp:5 bash```

# Auto-starting scripts

You can setup scripts to auto start by setting the `START_SCRIPT_PATH` environment variable.  You need to 
set this path to the _directory_ containing your startup scripts.

```
docker run --rm -it -p 8080:80 -v $(pwd):/var/www/html -e START_SCRIPT_PATH='/var/www/start' jstormes/lamp bash
```

The above command would search the directory /var/www/start and run any shell script it finds there using the
`run-parts` command.  
See [http://manpages.ubuntu.com/manpages/cosmic/man8/run-parts.8.html](http://manpages.ubuntu.com/manpages/cosmic/man8/run-parts.8.html).

# MariaDB (MySQL) in the Container

This image also will run a copy of MariaDB on startup.  The `root` password is `naked`.  You can access
the cli interface by running mysql at the command prompt.
