@echo off
set /p a=��ע�⣬ִ�д˽ű���ɾ����Ŀ������bin��obj�ļ��м�����Ŀ¼���������ļ���ȷ��Ҫִ��ô(y/n)?
if %a%==n exit

echo "����ɾ��obj..."
for /f "tokens=*" %%a in ('dir obj /b /ad /s ^|sort') do rd /s/q "%%a" 
echo "objɾ�����"
echo "����ɾ��bin..."
for /f "tokens=*" %%a in ('dir bin /b /ad /s ^|sort') do rd /s/q "%%a" 
echo "binɾ�����"
echo "ɾ������Ŀ¼��dll"
set dir=Reference\SceneMonitor.View.Controls
rd /s /q "%dir%"
echo ���%dir%"
md "%dir%\"
set dir=Reference\GCSS.View.Controls
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\SceneMonitor.Controls.ProjectWindow
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Basic\Controls
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"

set dir=Reference\Basic\Model
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Basic\Service
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Controls
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Model
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Repository
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Framework
echo ���%dir%"
rd /s /q "%dir%"
md "%dir%\"
echo ������ɡ�
Pause