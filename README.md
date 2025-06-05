### Win7Blue

![GitHub stars](https://img.shields.io/github/stars/d4t4s3c/Win7Blue?logoColor=yellow) ![GitHub forks](https://img.shields.io/github/forks/d4t4s3c/Win7Blue?logoColor=purple) ![GitHub watchers](https://img.shields.io/github/watchers/d4t4s3c/Win7Blue?logoColor=green)</br>
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/m/d4t4s3c/Win7Blue) ![GitHub contributors](https://img.shields.io/github/contributors/d4t4s3c/Win7Blue)  

### Overview
**Scan/Exploit - EternalBlue MS17-010 (CVE-2017-0143) - Windows 7 32/64 Bits.**

> [!WARNING]
> You may need to run the exploit several times to be successful.

![](/screenshots/screenshot.png)

**Tested On:**
  * Kali

**Requirements:**

  * Nmap
  * Python
  * Python3
  * Msfvenom
  * Impacket
  * Netcat/Ncat

### Scanner

The `Vuln` module uses **[Nmap](https://nmap.org)** to detect if the target system is vulnerable with the NSE script `smb-vuln-ms17-010`.

![](/screenshots/vuln.png)

The `Arch` module uses **[NetExec](https://www.netexec.wiki)** to identify the architecture `x86/x64` of the target system.

![](/screenshots/arch.png)

### Exploit

![](/screenshots/exploit.png)

