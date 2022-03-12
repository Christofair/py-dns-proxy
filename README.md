# py-dns-proxy
Server DNS as proxy, which blocks desired addresses from the list (may called 'blockedlist').

# Requirements
* attrs==21.4.0
* Automat==20.2.0
* constantly==15.1.0
* hyperlink==21.0.0
* idna==3.3
* incremental==21.3.0
* six==1.16.0
* Twisted==22.2.0
* twisted-iocpsupport==1.0.2
* typing-extensions==4.1.1
* zope.interface==5.4.0

First version is very poor, don't trust it.
There is awful method to parse easylist, that regular expression can fetch even string like "2.0". XD

# ToDo:
* Fix parsing easylist.txt or creating special own list.
* Connect to remote DNS by TLS connection

# Instalation and running
This file have to be run in administrative mode, because there is low value port (UDP 53). Often you have to restart browser and/or network to see effects.
1. Prepare virtual environment for python (i.e. with command: "python -m venv .")
2. Clone this repository.
3. Install requirements. (./Scripts/pip install -r requirement.txt)
4. Run script (now it has not  name yet) "client.py"
5. Set in yours OS dns server as localhost (127.0.0.1).
6. Let's test B)

<details>
  <summary> MindMap image in polish </summary>
  <img src="https://github.com/Christofair/py-dns-proxy/blob/master/dns_mm.png" alt="mind map about dns">
  <b>Check out "DNS.mm" file. Needs <a href="https://sourceforge.net/projects/freeplane/">Freeplane</a> to open.</b>
</details>
