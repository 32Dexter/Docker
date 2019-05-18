#! /usr/bin/expect

spawn "./dwagent.sh"
expect "Option (3):"
send "1\r"
expect "Path (/usr/share/dwagent):"
send "/datacenter/dwagent\r"
expect "Option (2):"
send "1\r"
expect "Option (1):"
send "1\r"
expect "Code:"
send "$CODE"
expect eof
