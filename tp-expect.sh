#!/usr/bin/expect -f
match_max 1000000
set timeout -1
spawn ./sxi/TestProject_Agent_2.3.4.sh 
expect "User License Agreement must be accepted, press any key to read it."
send -- "y"
send -- "\r"

expect "*Do you agree and wish to install this program? "
send -- "yes"
send -- "\r"

expect "Specify installation destination path"
send -- "/opt/testproject/agent"
send -- "\r"

expect "Start application?*"
send -- "n"
send -- "\r"

expect eof
