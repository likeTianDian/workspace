@echo off
echo ==============================
echo 不知道原理的别乱用，坏了别怪人
echo.
echo                    by likeTianDian
echo ==============================
pause
dir /ad /b > dir.txt
echo 本文档显示未建立xml的文件夹>log.txt
for /f %%i in (dir.txt) do (
    if exist %%i.xml (
        echo 文件夹 %%i 存在xml，已跳过
    ) else (
        软件名字 -c %%i.xml %%i
    )
    del dir.txt
)>>log.txt
del dir.txt
echo xml已创建完成，按任意键退出