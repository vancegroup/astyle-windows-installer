@echo off
set TOOLSDIR=%~dp0
%TOOLSDIR%astyle/bin/astyle.exe -n --options=%TOOLSDIR%astylerc %*
