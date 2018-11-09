
import os
import pexpect
import sys

lapass = os.environ['SSHPASS']
lauser = 'userid'

host = sys.argv[1]
license = sys.argv[2]

child = pexpect.spawn("/usr/bin/ssh " + lauser + "@" + host)
child.logfile_read = sys.stdout
child.expect("assword:")
child.sendline(lapass)
child.expect('#')
child.sendline('term len 0')
child.expect('#')
child.sendline('show clock')
child.expect('#')
child.sendline('show license detail')
child.expect('#')
child.sendline('show license udi')
child.expect('#')
child.sendline('license install flash:' + license)
child.expect('#')
child.sendline('show license detail')
child.expect('#')
child.sendline('show clock')
child.expect('#')
child.sendline('exit')
child.close()

