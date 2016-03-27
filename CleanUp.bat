@echo off
set /p a=请注意，执行此脚本会删除项目内所有bin和obj文件夹及引用目录编译生成文件，确定要执行么(y/n)?
if %a%==n exit

echo "正在删除obj..."
for /f "tokens=*" %%a in ('dir obj /b /ad /s ^|sort') do rd /s/q "%%a" 
echo "obj删除完毕"
echo "正在删除bin..."
for /f "tokens=*" %%a in ('dir bin /b /ad /s ^|sort') do rd /s/q "%%a" 
echo "bin删除完毕"
echo "删除引用目录的dll"
set dir=Reference\SceneMonitor.View.Controls
rd /s /q "%dir%"
echo 清空%dir%"
md "%dir%\"
set dir=Reference\GCSS.View.Controls
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\SceneMonitor.Controls.ProjectWindow
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Basic\Controls
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"

set dir=Reference\Basic\Model
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Basic\Service
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Controls
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Model
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Business\Repository
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
set dir=Reference\Framework
echo 清空%dir%"
rd /s /q "%dir%"
md "%dir%\"
echo 清理完成。
Pause