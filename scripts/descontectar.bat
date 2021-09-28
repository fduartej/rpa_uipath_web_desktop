for /F "tokens=1,2,3,4,5" %%A in ('"query session  | findstr "rdp-tcp#""') DO (
  set rdpSessiontmp=%%A
)

  set rdpSession=%rdpSessiontmp:~1,100%
  %windir%\System32\tscon.exe %rdpSession% /dest:console

exit