mkdir -Force build
nasm -f win64 main.asm -o build/main.obj
link build/main.obj /subsystem:console /defaultlib:kernel32.lib /entry:main /OUT:build/main.exe /PDB:main.pdb /MACHINE:X64 /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x64"
