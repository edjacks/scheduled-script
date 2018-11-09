# scheduled-script
bash trick to run cron like job when there's no AT or CRONJOB available


I used this trick to have a long running script in a tmux session that would run a set of commands at a given time.  In this case it was to call a python (pexpect) script to log into a number of CSR routers and install the license files from flash.  The system I used did not have ATD or allow me access to cron.
