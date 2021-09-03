Network security basics

Access control list
-	Rules that grant or deny access to a certain resource(e.g. file, comuter,server,nework,printer,system etc)
-	ACL tell networking devices which type of traffic can access the network, and which activity is allowed
-	In networks the ACL is applied on a network interface (router, server etc ) in a specific direction
-	A networking device would apply an ACL on each packet as follows: get the destination and source addresses from the packet, find a rule in the ACL that matches the source and/or destination addresses/ports. If a match is found check the action in the rule, then allow (pass it) or deny the packets (drop it)
-	The order of the list is important it will find a rule the do it, it will not go through the rest of the rules. Go from specific to general rules.
-	If no match found drop the packet, i.e every packet must have a rule
-	ACLs are everywhere when working with securtiy devices and protocols (for servers, routers
WILDCARD
-	ACl use the wildcard bits
-	Wildcards use the opposite of a subnet mask (replace 1 with 0, 0 with 1)
-	ACL will use the wildcard to check if the source/destination IP address matches a specific rule
-	255.255.255.0 -> 0.0.0.255
-	255.255.128.0 -> 0.0.127.255
-	The 1s accept any value, the zeros should be exactly the same.  Only check the zeros in the binary from the wildcard. The wildcard says check that the parts under the wildcard that are zero, they should be exactly the same for incoming packets as the allowe dvalue in the list.
-	The wildcard attaches to an ip like the subnet mask, checks it for incoming packets
-	198.162.2.3 (wc 0.0.0.255)  means check the first 3 octets
-	It has no relation to subnet masks, nothing to do with host portion network portion





FIREWALL
-	A Firewall is a system, or group of systems, that enforces an access control policy between networks


A firewall can be any device and are quite flexible.
-	Prevents the exposure of sensitive hosts, resources, and applications to untrusted users
-	It sanitizes protocol flow, which prevents the exploitation of protocol flaws
-	It blocks malicious data from servers and clients
-	It reduces security management complexity by off0loading most of the network access control to a few firewalls in the network
-	A misconfigured firewall can have serious consequences for the network, such as becoming a single point of failure
-	Network performance can be affected/ slow down
-	Unauthorised traffic can be tunnelled or hidden so that it appears as legitimate traffic through the firewall
Firewall policies:
Two common types of firewall policies:
-	Allow list (previously known as white-list): the firewall drops all packets except for those specifically listed as acceptable
-	Deny list( previously known as the black list): the fire wall allows all packets to pass except those specifically listed as unacceptable.
Firewall types :
1.	Packet filtering firewall
2.	Stateful firewall
3.	Proxy firewall
4.	Web application firewall (WAF)


Packet filtering firewall:
Checks two layers in the OSI model the transport and network layers. It compares the packets to the rules and filters anything out that it doesn’t think fits. Need to allow the requests and the responses. It thinks of everything as packets not as established connections.

Packets are mapped to a pre-established criteria need to specify every rule:
-	Source IP
-	Destination IP
-

Stateful firewall:
-	Stateful packet inspection (SPI)
-	Allows for the response from a request. I.e just need to allow from the server to the destination, the firewall will automatically allow the response through.
-	Analysing packet header
-	Inspecting packet state



Proxy Firewalls:
-	Operate on the application layer
-	Can be deployed in between a remote user (who might be on a public network such as the internet) and the dedicated server on the internet
-	Can be effective shielding and filtering mechanism between public networks and protected internal or private networks
-	Authentication schemes such as passwords and biometrics can be set up for accessing the proxies.
-	Proxy firewall generally keep very detailed logs
-	The main disadvantage is the speed

Web application firewall:
-	WAFs are built to provide web applications security by applying a set of rules to an HTTP conversation
-	They have to keep certain ports open to the internet
-	This means attackers can try specific website attacks against the supplication and associated database, such as XSS and SQL








Remote port is the connecting ports, usually the range of ephemeral ports,
