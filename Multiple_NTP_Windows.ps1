# This script sets multiple NTP servers in Microsoft Windows
#
# Reference: https://www.ctrl.blog/entry/tutorial-windows-ntp-config.html
# NEEDS ADMINISTRATIVE PRIVILEGES
#
# Tested with:
# Windows 10 x64 22H2
# Windows 11
#
# Rollout compatible via KACE or OCS

net stop w32time; net start w32time
w32tm /config /update /manualpeerlist:"ptbtime1.ptb.de ptbtime2.ptb.de ptbtime3.ptb.de ptbtime4.ptb.de"
w32tm /resync

# Check with:
# w32tm /query /peers