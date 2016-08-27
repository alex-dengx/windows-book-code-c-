cd /d "%~dp0"
set astyle=%~dp0\src_tools\AStyle.exe --style=linux --s4 --p --H --U --f --v --w --c --xe --xL --xW
set dir_path=H:\rover\rover-self-work\cpp\book-code\Windows多线程编程技术与实例
echo "format source code......"
for /R %dir_path% %%a in (*.cpp;*.c;*.cc;*.h;*.hpp) do %astyle% "%%a" 1>nul 2>nul
echo "delete backup source code......"
for /R %dir_path% %%a in (*.orig) do del "%%a"
echo "format source code end."