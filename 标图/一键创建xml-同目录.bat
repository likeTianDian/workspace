@echo off
echo ==============================
echo ��֪��ԭ��ı����ã����˱����
echo.
echo                    by TianDian
echo ==============================
pause
dir /ad /b > dir.txt
echo ���ĵ���ʾδ����xml���ļ���>log.txt
for /f %%i in (dir.txt) do (
    if exist %%i.xml (
        echo �ļ��� %%i ����xml��������
    ) else (
        imglab.exe -c %%i.xml %%i
    )
    del dir.txt
)>>log.txt
del dir.txt
echo xml�Ѵ�����ɣ���������˳�