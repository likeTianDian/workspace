@echo off
echo ==============================
echo ��֪��ԭ��ı����ã����˱����
echo.
echo                    by likeTianDian
echo ==============================
pause
dir /ad /b > dir.txt
echo ���ĵ���ʾδ����xml���ļ���>log.txt
for /f %%i in (dir.txt) do (
    if exist %%i.xml (
        echo �ļ��� %%i ����xml��������
    ) else (
        ������� -c %%i.xml %%i
    )
    del dir.txt
)>>log.txt
del dir.txt
echo xml�Ѵ�����ɣ���������˳�