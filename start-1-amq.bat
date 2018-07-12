::REM The `@` symbol disables printing the respective command. In this case, it's stopping all further commends from printing to the standard output.

@ECHO OFF

SET ACTIVEMQ_HOME=%~dp0\External\apache-activemq-5.12.1

CMD /C "CD External\apache-activemq-5.12.1 && bin\activemq start"
