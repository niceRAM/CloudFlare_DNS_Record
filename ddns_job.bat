@echo off
call getValue.bat dynamic_ip
IF EXIST temp (
    SET /p ori_dynamic_ip= < temp
    IF NOT "%dynamic_ip%" == "%ori_dynamic_ip%" (
        ECHO %dynamic_ip% > temp
        CALL update_record.bat
    )
) ELSE (
    ECHO %dynamic_ip% > temp
    CALL update_record.bat
)
