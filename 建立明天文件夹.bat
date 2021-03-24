@echo off
set /a timea=%date:~0,4%%date:~5,2%%date:~8,2%
set /a timeb=%timea%+1
mkdir %timeb:~0,4%-%timeb:~4,2%-%timeb:~6,2%
