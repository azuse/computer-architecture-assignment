set dd=%DATE:~0,10%
set tt=%time:~0,8%
set hour=%tt:~0,2%
git pull > gitlog.log
git add . >> gitlog.log
git commit -m "ScriptBack %dd:/=-% %tt%" >> gitlog.log
git push origin master >> gitlog.log

goto :eof