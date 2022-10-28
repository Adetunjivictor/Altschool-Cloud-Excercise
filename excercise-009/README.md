# 193.16.20.35/29

What is the Network IP, number of hosts, range of IP addresses and broadcast IP from this subnet?



##### lets work around the IP Address.
<br>


##### <ul>
       
 <li>
      Converting it to binary then gives:
Network Portion: 1's

Host Portion: 0's

Netmask Binary: 11111111.11111111.11111111.11111000
        </li>
<li>Then in order to convert the subnet mask address from binary to decimal apply the following 

formular:
Total no. of octets in binary: 128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255

First Octet:
Total: 255

Second Octet:
Total: 255

Third Octet:
Total: 255

Fourth Octet:
Total: 248

Octet Sum = 255.255.255.248

Therefore: 11111111.11111111.11111111.11111000 in binary = 255.255.255.248
</li>
<li>
   Wild card = subtract the subnet mask from 255.255.255.255
       = 255.255.255.255 - 255.255.255.248
      
      = 255 - 248
      
      = 7
       Wild card = 0.0.0.7
</li>
<li>
Next is to find the network ID:
Where
Subnet Mask = 11111111.11111111.11111111.11111000

Given IP = 11000001.00010000.00010100.00100011
</li>
<li>
First Octet:
Binary and operation between (255 & 193) or (11111111 & 11000001)
Total Sum = 193

Second Octet:
Binary and operation between (255 & 16) or (11111111 & 00010000)
Total Sum = 16

Third Octet:
Binary and operation between (255 & 20) or (11111111 & 00010100)
Total Sum = 20

Fourth Octet:
Binary and operation between (248 & 35) or (11111000 & 00100011)
   
   Total Sum = 32

 network IP address = 193.16.20.32
</li>
<li>
Next is to find the number of hosts:
Number of Hosts = 2^n - 2

Where n = number of host bits minus two

Number of hosts = 2^3 - 2
            = 8 - 2
            
            = 6
</li>
<li>
Given IP: 193.16.20.35/29

Network IP: 193.16.20.32

Number of Hosts: 6

Range of IP Addresses: 193.16.20.33 - 193.16.20.38

• min range of IP's = 193.16.20.33

• max range of IP's = 193.16.20.38

Broadcast IP: 193.16.20.39
</li>
</ul>