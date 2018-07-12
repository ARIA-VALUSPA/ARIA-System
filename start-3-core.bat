::REM The `@` symbol disables printing the respective command. In this case, it's stopping all further commends from printing to the standard output.

@ECHO OFF

::REM `CMD` starts a new instance of the Windows command interpreter.
::REM `/C` option carries out the command specified by string and then terminates.
::REM `CD Agent-Core-Final && gradlew` changes the directory and starts the `gradlew` script (starting Gradle).
::REM `--console=plain` option reverts the Gradle output to an old-appending-style.

CMD /C "CD Agent-Core-Final && gradlew --console=plain --no-daemon -Dfile.encoding=UTF-8 run"
