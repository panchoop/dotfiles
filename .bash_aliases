alias server='192.168.178.202'
alias vmpaolo='panchoop@20.71.211.55'
alias localhost1='-L localhost:8080:localhost:8080 '
alias ssh='ssh '
alias sshserver='ssh -L localhost:8080:localhost:8080 192.168.178.202'
alias cd='cd '
if [ "$COMPUTER_ID" == "HOME" ]
then 
    alias wDownloads='/mnt/c/Users/panch/Downloads'
elif [ "$COMPUTER_ID" == "OFFICE" ]
then
    alias wDownloads='/mnt/c/Users/FranciscoRomero-Hinr/Downloads/'
fi
# scps
alias get_from_server="scp panchoop@192.168.178.202:~/to_host/* /home/panchoop/from_server/ ; ssh panchoop@192.168.178.202 'rm ~/to_host/*'"

#
alias ramonip='192.168.178.104'
