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
    cd %%i
    if exist *.xml (
        echo �ļ��� %%i ����xml��������
    ) else (
        dir /ad /b > dir.txt
        for /f %%j in (dir.txt) do (
            ������� -c %%j.xml %%j
        )
    )
    del dir.*
    cd ..
)>>log.txt
del dir.txt
echo xml�Ѵ�����ɣ���������˳�