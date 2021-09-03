Dynamic host configuration protocol
This is for an environment if hosts are added and removed every day, so a dynamic system. To automate this they tried to add a protocol that exists on the application layer.
DHCP
-	Automates the assignment of: IP addresses, subnet masks, gateways, and other IP networking parameters
-	When a host connects to the network, the DHCP server is contacted (indirectly) and an address is requested
-	The DHCP chooses an address from a configures range of Addresses(pool)
-	The DHCP server assigns (leases) it to the host for a configurable period of time.
-	Various types of devices can be a DHCP servers. Such as: wireless access point(AP), router, dedicated DHCP server, personal computer with a DHCP server software
-	DHCP is a broadcast protocol so it can assign IP addresses to hosts on its own broadcast domain.(will only work in your broadcast domain.
-	DHCP server port(67/UDP) and DHCP client port (68/UDP), server listens to a port 67 UDP the client listens to the port 68. The client will not take an ephemeral port.


The discover is a broadcast because the client has no idea about the IP of anything in the network, so it does this to discover which IP is the DHCP server.There is no client Ip and the third point is that there may be multiple servers.
The DHCPOFFER is when the DHCP servers offer Ips to use, the client goes through these and then sends a DHCPrequest back for the IP it wants to use.
Then the server sends an acknowledgement that the client can start using the IP.  All of this is braodcasted.
The server needs its own Ip in the network,  then you must go to services and assign Ips in the local network, here you can assign the pool size. The server must be connected to a switch. To the hosts on the networks. You also need to setup the default gate way on the server as well to be placed in the DHCP requests.
For the pool you chose the lowest IP you want to give, the pool size is the number above it can go to i.e
192.168.1.60            pool 20   is
192.168.1.60 -192.168.1.80

The host requesting sends a DHCP request to everyone on the local network
The DHCP server responds with an ARP to everyone on the server, by responding with an IP, it needs to check if anyone has this IP so if it gets a response from this IP then in means the IP is not taken
.
Then the DHCP offer is sent to the computer  found by the MAC address with the IP
The computer will then use an ARP request to also check if the IP is taken if not the client will take the IP.

Ipconfig /renew          renews the DHCP information

If a computer tries DHCP with no server then the computer will use AIPIPA to assign itself an IP address to use. Starting with 169.

DHCP relies on the broadcast domain, so it cannot pass the router. To get around this and access other networks you can use a DHCP relay server. This will not be studied in this course.




Hypertext Transfer Protocol (HTTP)
It’s an application layer protocol. It is used to transfer hypertext
-	Transmitting hypermedia documents, such as Hyper Text Markup Language (HTML)
-	It was designed for communication between web browsers and web servers, it is also used for other purposes
-	HTTP follows a classical client-server model, client opens a connection to make a request, then waiting to receive a response
-	It is a stateless protocol, the server does not keep any data between two requests or states
-	By default is uses the port TCP 80  by default but it can work on any other port (as all application protocols)
-	All information is in clear text  
HTTP secure (HTTPs)
-	Is a secure version of the HTTP protocol that uses the SSL/TLS protocol for encryption and authentication. SSL stands for secure socket layer, it just encrypts the data that is sent. TLS is transport layer security
-	Uses the port 443/TCP by default instead of http port 80
-	This protocol means that sensitive information is protected
-	Is becoming the standard protocol
For a http server it is possible to request an IP from the DHCP server, but you need a fixed IP (doesn’t have to be static). This means most of the time the server is configured manually.  You can use the DHCP server to always assign an IP to a specific MAC address.

File transfer protocol
(FTP)
-	Is a standard internet protocol for transmitting files between computers over TCP connection
-	FTP uses the port 21/TCP but it might use port 20/TCp too if it is running in active mode
-	Is a client server protocol where a client sends a request and a sver responds
FTP Secure/ FTP-SSL
-	It adds an extension that adds support for TLS and formerly SSl
-	Works on port 21/TCP
SFTP  (SSH file transfer protocol)
-	A secure file transfer subsystem for the Secure Shell (SSH protocol)
-	Port 22? Is used

Set up o a server, where you can add username and password with permissions. The files are the files that exist on the FTP server

ftp [ipof server ]            - joins
dir                          gets directory
get [file]                   gets the file
put [file]                 puts a file on the server

DNS (Domain name system)
-	These convert numeric addresses into a simple recognisable name
-	8.8.8.8    is www.google.com
-	Designed for humans to use, routing will be done on IP addresses
-	On the internet, fully-qualified domain names (FQDNs), such as listed above
-	It is fixed for the user even if the company decides to change the IP address, so you only have to type in the domain name
-	The new address is simply linked to the existing domain name and connectivity is maintained


The server will call the root level domain, then it will ask for the top level domain. Then you communicate with the top level domain and ask for google.com. Then you will contact google and ask for the www. Which is the Ip for the server you want.

To tell the host the DNS server you should use for the host is in IP configuration or add to the DHCP server.
On the DNS server it creates a table of the website IP and their DNS names so when you name a DNS it replies with the IP for the DNS.
The DNS server does not rely on broadcast so the other hosts on other networks can use it

nslookup [www.google.com]          queries the DNS for the IP address of the [website]  
nslookup can be used for trouble shooting, e.g. verifying the current status of the name servers.
DNS records


A record  - sotres a hostname and its corresponding IP address
CName record - can have pointers to the main site
MX record  - finds out the mail server for a domain
Start of authority – basics information for the domain

Email system
-	Electronic mail to exchange messages
-	Client-server method of communication
-	Three top options used SMTP IMAP POP

SMTP
Simple mail transfer protocol
-	Sends and email to the server and the server sends it to that person
-	Lists to port 25 b default, and if using SSL then 465 or 587 are the ports used
-	Port 465 isn’t used any more since it is used for other services
Post office Protocol POP
-	POP 3 used today
-	TCP 110
-	995 when encrypted

Internet message protocol IMAP
-	Retrieve email from server
-	Port 143
-	Encryption 993 for SSL



POP is a simpler protocol than IMAP, IMAP keeps everything on the server by making a copy and sending it to your machine, POP just downloads it to your machine(you can leave it on their as well if wanted). IMAP can manage folders and subfolders, Pop treats it as a single store. POP only one person can be connected to the mailbox at anytime, IMAP allows many. POP you receive all parts of the message, In IMAP you can retrieve the MIME parts separately. Imap also supports flags on the system to keep track of a message state (e.g read, forward).

Need to set the domain name in the email server i.e cyber.com
So when you send it is is admin@cyber.com
Route it through the dns server to go to the mail server
