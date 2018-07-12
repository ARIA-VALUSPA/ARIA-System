@ECHO OFF

:: Goes through `model_all.lst` file to get list of models, then checks if model exists in `../Agent-Input/` and downloads any missing models by running `curl.exe -L -o ../Agent-Input/i j` where `i` is the model name and `j` its URL.  

FOR /F "tokens=1,2" %%i in (model_all.lst) DO (
	IF EXIST ../Agent-Input/%%i (
		ECHO found %%i
	) ELSE (
		set FILE=%%i
		set URL=%%j
		ECHO Downloading %%i
		curl.exe -L -o ../Agent-Input/%%i %%j
	)
)
