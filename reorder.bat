SET Input_PATCH1=D:\Hawkeye\bruce\test-hdr\lo
SET Input_PATCH2=D:\Hawkeye\bruce\test-hdr\lo1

SET srcstart=2
SET dststart=1
SET count=1200


FOR /L %%i IN (%srcstart%,1,%count%)  DO (CALL :reorder %%i)
GOTO :eof

:reorder
set /a j=%1-1
copy  %Input_PATCH1%\%1.tiff %Input_PATCH2%\%j%.tiff 
GOTO :eof