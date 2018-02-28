# docker-lamp
A Docker container with Linux, Apache, MariaDb, PHP and Cron.  For deploying thick containers.

---

# Quick Start Examples

  This examples will serve your current directory on port 8080 so [http://localhost:8080](http://localhost:8080).  

  Press `[Ctl-C]` to stop the docker container.

### BASH (Linux/Mac OS X):

```docker run --rm -it -p 8080:80 -v $(pwd):/var/www/html jstormes/lamp```

### PowerShell (Windows)

```docker run --rm -it -p 8080:80 -v ${PWD}:/var/www/html jstormes/lamp```

### Windows CMD (Windows CMD)

```docker run --rm -it -p 8080:80 -v %cd%:/var/www/html jstormes/lamp```

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



