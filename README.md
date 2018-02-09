# docker-lamp
A Docker container with Linux, Apache, MariaDb, PHP and Cron.  For deploying thick containers.

# Examples

BASH:

```docker run -it -p 8080:80 -v $(pwd):/var/www/html jstormes/lamp```

PowerShell

```docker run -it -p 8080:80 -v ${PWD}:/var/www/html jstormes/lamp```

Windows CMD

```docker run -it -p 8080:80 -v %cd%:/var/www/html jstormes/lamp```

Open your browser to [http://localhost:8080](http://localhost:8080)

To stop the Docker Container pres [Ctl]-C in the console.
