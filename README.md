# Win7Blue

Scan/Exploit - EternalBlue MS17-010 - Windows 7 32/64 Bits

![](/screenshots/screenshot.png)

---

- <kbd>Scanner</kbd>

The `Vuln` module uses **[Nmap](https://nmap.org)** to detect if the target system is vulnerable with the NSE script `smb-vuln-ms17-010`.

![](/screenshots/1.png)

The `Arch` module uses **[NetExec](https://www.netexec.wiki)** to identify the `architecture (x86/x64)` of the target system.

---

- <kbd>Exploit</kbd>

![](/screenshots/2.png)

- <kbd>Usage</kbd>

```cmd
git clone https://github.com/d4t4s3c/Win7Blue.git && cd Win7Blue && chmod +x ./Win7Blue
./Win7BLue
```

- <kbd>Enum 32/64 bits</kbd>

```cmd
root@kali:~# crackmapexec smb <target>
SMB   192.168.1.XXX   445   TESTING   [*] Windows 7 Professional 7600 x64 (name:TESTING) (domain:TESTING) (signing:False) (SMBv1:True)
```

- <kbd>Tested On:</kbd>

  * Kali
  * Parrot
  
- <kbd>Requirements:</kbd>

   * Nmap
   * Python
   * Python3
   * Msfvenom
   * Impacket
   * Netcat/Ncat

---
