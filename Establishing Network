Step 1: Connect both computers
- Connect PC-1 and PC-2 to the same Wi-Fi network or LAN.

Step 2: Find the IP address of PC-1 and PC-2
```cmd
ipconfig
```
eg:
PC-1: 192.168.10.100
PC-2: 192.168.10.105

Step 4: Allow incoming ping requests
On BOTH computers, open Command Prompt as Administrator.
```cmd
netsh advfirewall firewall add rule name="Allow ICMPv4" protocol=icmpv4:8,any dir=in action=allow
```

Step 5: Test connectivity from PC-1 to PC-2
Go to PC-1 and execute:
```cmd
ping 192.168.10.105
```

Step 6: Create a folder on PC-2
```cmd
mkdir C:\LabShare
```

Step 7: Create a text file on PC-2
```cmd
echo Welcome to the network lab > C:\LabShare\test.txt
```

Step 8: Share the folder from PC-2
```cmd
net share LabShare=C:\LabShare /grant:Everyone,READ
```

Step 9: View shared folders from PC-1
```cmd
net view \\192.168.10.105
```

Step 10: Access the shared folder from PC-1
```cmd
net use Z: \\192.168.10.105\LabShare
```
