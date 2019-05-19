#! /usr/bin/expect

spawn "./home/dwagent.sh"
expect "Option (3):"
send "1\r"
expect "Path (/usr/share/dwagent):"
send "/datacenter/dwagent\r"
expect "Option (2):"
send "1\r"
expect "Option (1):"
send "1\r"
expect "Code:"
send $env(CODE)
send "\r"
expect eof
