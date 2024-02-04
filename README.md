# Win7Blue

Scan/Exploit - EternalBlue MS17-010 - Windows 7 32/64 Bits

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

---

# Scanner

The `Vuln` module uses **[Nmap](https://nmap.org)** to detect if the target system is vulnerable with the NSE script `smb-vuln-ms17-010`.

![](/screenshots/vuln.png)

The `Arch` module uses **[NetExec](https://www.netexec.wiki)** to identify the architecture `x86/x64` of the target system.

![](/screenshots/arch.png)

---

# Exploit

![](/screenshots/exploit.png)

---
