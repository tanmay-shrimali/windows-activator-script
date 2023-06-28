@echo off

rem Check if the product key is already entered
wmic path softwarelicensingservice get OA3xOriginalProductKey
if %errorlevel% == 0 (
    echo Windows 11 is already activated.
    goto end
)

rem Insert your product key here
set product_key=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

rem Inject the product key
cscript //nologo slmgr.vbs /ipk %product_key%

rem Activate Windows
cscript //nologo slmgr.vbs /ato

:end