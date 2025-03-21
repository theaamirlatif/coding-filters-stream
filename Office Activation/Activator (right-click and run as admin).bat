@echo off
IF EXIST "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" (goto ActivateOffice2016)
IF EXIST "C:\Program Files\Microsoft Office\Office16\ospp.vbs" (goto ActivateOffice2016)

IF EXIST "C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs" (goto ActivateOffice2013)
IF EXIST "C:\Program Files\Microsoft Office\Office15\ospp.vbs" (goto ActivateOffice2013)

IF EXIST "C:\Program Files (x86)\Microsoft Office\Office14\ospp.vbs" (goto ActivateOffice2010)
IF EXIST "C:\Program Files\Microsoft Office\Office14\ospp.vbs" (goto ActivateOffice2010)

:ActivateOffice2016
cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /act
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /act
goto ThankYou

:ActivateOffice2013
cscript "C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs" /act
cscript "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /act
goto ThankYou

:ActivateOffice2010
cscript "C:\Program Files (x86)\Microsoft Office\Office14\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files (x86)\Microsoft Office\Office14\ospp.vbs" /act
cscript "C:\Program Files\Microsoft Office\Office14\ospp.vbs" /sethst:_vlmcs._tcp.uky.edu
cscript "C:\Program Files\Microsoft Office\Office14\ospp.vbs" /act
goto ThankYou

:ThankYou
cscript "c:\windows\system32\slmgr.vbs" /skms _vlmcs._tcp.uky.edu
cscript "c:\windows\system32\slmgr.vbs" /ato
cscript "c:\windows\system32\slmgr.vbs" /dlv 
cscript "c:\windows\system32\slmgr.vbs" /skms _vlmcs._tcp.uky.edu
cscript "c:\windows\system32\slmgr.vbs" /ato
cscript "c:\windows\system32\slmgr.vbs" /dlv

echo.
echo The activation is complete! You can now close this window!
pause