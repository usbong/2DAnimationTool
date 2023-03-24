@echo off
REM Copyright 2021~2023 USBONG
REM
REM Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You ' may obtain a copy of the License at
REM
REM http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, ' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing ' permissions and limitations under the License.
REM
REM Usbong 2D Animation Tool Installer
REM
REM Auto-install Application
REM
REM company: USBONG
REM author: SYSON, MICHAEL B.
REM date created: 20210613
REM last updated: 20230324; from 20210614
REM @website address: http://www.usbong.ph
REM
REM Additional Notes:
REM 1) If asked by Computer what to do with the executable file, select: "Execute in Terminal"
REM 
REM 2) XAMPP Tool has to first be installed
REM https://www.apachefriends.org/; last accessed: 20230324


REM sBaseDir="/var/www/html/";
set sBaseDir="C:\xampp\htdocs\"

echo "Usbong 2D Animation Tool"
REM echo "Installing..."

if exist %sBaseDir% (
	echo "Installing..."
) else (
	echo "ERROR NOT FOUND: C:\xampp\htdocs\"
	echo "XAMPP not yet installed!"
	echo "Please install XAMPP!"	
	echo --
	pause
	exit
)

echo "--"

REM echo %sBaseDir%

mkdir %sBaseDir%"\usbong_2DAnimationTool"

echo "--"
echo "Transferring Files..."

xcopy /d html_application %sBaseDir%"\usbong_2DAnimationTool\html_application\"

xcopy /d assets\images %sBaseDir%"\usbong_2DAnimationTool\assets\images\"
xcopy /d GUIDE %sBaseDir%"\usbong_2DAnimationTool\GUIDE\"

echo "--"
echo "Installation Complete."


REM note: firefox web browser may need to be first installed
REM auto-open
REM echo "--";
REM echo "Auto-opening application...";
REM
REM firefox --new-window http://localhost/usbong_2DAnimationTool/html_application/usbong2DAnimationTool.html

echo "--"
pause
