:: Temporary fix for missing libgfortran.dll.a - remove when r-base is fixed
sed -i 's/FLIBS = .*$/FLIBS = -lgfortran -lquadmath -lm/' %PREFIX%\lib\R\etc\x64\Makeconf
IF %ERRORLEVEL% NEQ 0 exit /B 1

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
