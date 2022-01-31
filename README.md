# Win7Blue

Win7Blue is a tool created to exploit the "EternalBlue MS17-010" vulnerability and obtain a regular shell via netcat (without Metasploit) and validates in the OSCP exam. 

>updated code in 2022 for Python3

![](/screenshots/001.png)

- <kbd>Scan</kbd>

![](/screenshots/002.png)

- <kbd>Exploit</kbd>

![](/screenshots/003.png)

![](/screenshots/004.png)

- <kbd>Use</kbd>

```cmd
root@kali:~# cd ~
root@kali:~# git clone https://github.com/d4t4s3c/Win7Blue.git
root@kali:~# cd Win7Blue
root@kali:~# chmod +x Win7Blue.sh
root@kali:~# ./Win7BLue.sh
```

- <kbd>Enum arch (x86 / x64)</kbd>

```cmd
root@kali:~# crackmapexec smb <target>
SMB   192.168.1.XXX   445   TESTING   [*] Windows 7 Professional 7600 x64 (name:TESTING) (domain:TESTING) (signing:False) (SMBv1:True)
```

- <kbd>Tested On:</kbd>

  * Kali
  * Parrot
  * Debian
  * Ubuntu
  
- <kbd>Requirements:</kbd>

   * Python3
   * Python2.7
   * Msfvenom
   * Impacket
   * Netcat

---
