::REM The `@` symbol disables printing the respective command. In this case, it's stopping all further commends from printing to the standard output.

@ECHO OFF

docker rm -f avp3-ariaasr
ECHO Continuing happily ...
docker build -t ariaasr %~dp0/ASR
docker run -p 8888:8888 --name avp3-ariaasr ariaasr
