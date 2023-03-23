#!/bin/bash

# Copyright 2021~2023 USBONG
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You ' may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, ' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing ' permissions and limitations under the License.
#
# Usbong 2D Animation Tool Installer
#
# Auto-install Application
#
# @company: USBONG
# @author: SYSON, MICHAEL B.
# @date created: 20211115
# @last updated: 20230323; 20220311
# @website address: http://www.usbong.ph
#
# Additional Notes:
# 1) If asked by Computer what to do with the executable file, select: "Execute in Terminal"
# 

sBaseDir="/var/www/html/";

echo "Usbong 2D Animation Tool";
echo "Installing...";
echo "--";

mkdir $sBaseDir/usbong_2DAnimationTool

echo "--";
echo "Transferring Files...";

cp -r ./html_application $sBaseDir/usbong_2DAnimationTool

cp -r ./assets $sBaseDir/usbong_2DAnimationTool
cp -r ./GUIDE $sBaseDir/usbong_2DAnimationTool

echo "--";
echo "Installation Complete.";

# note: firefox web browser may need to be first installed
# auto-open
#echo "--";
#echo "Auto-opening application...";
#
#firefox --new-window http://localhost/usbong_2DAnimationTool/html_application/usbong2DAnimationTool.html
