@echo off
set subdir=v4

rem Rette søgestier
call replace.bat "/Billeder/" "/%subdir%/Billeder/" * *.html
call replace.bat "/css/" "/%subdir%/css/" * *.html
call replace.bat "/index/" "/%subdir%/index/" * *.html
call replace.bat "/index.html" "/%subdir%/index.html" * *.html
call replace.bat "NOINDEX, NOFOLLOW" "Width=device=width,initial-scale=1.0" * *.html
call replace.bat "/index/Start.html" "/index.html" * *.html
call replace.bat "robots" "viewport" * *.html


rem Rette en søgesti tilbage
call replace.bat "dist/%subdir%/css" "dist/css" * *.html
call replace.bat "/%subdir%/css/font" "/css/font" * *.html

call replace.bat "/Billeder/" "/%subdir%/Billeder/" * *.css
call replace.bat "/css/" "/%subdir%/css/" * *.css
call replace.bat "/index/" "/%subdir%/index/" * *.css

copy index\start.html .\index.html
