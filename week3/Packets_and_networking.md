Packets and networking and packet tracer
Using packet tracer on kali linux. This is a cisco product and needs a cisco account to use. Either login using skills for all, or enrol in a network academy course to get a network academy account.
It’s a cisco simulator which you can create a network wither logically buy adding host, switches, routers etc. You can plan out networks by placing them in the work space. The devices are in the list on the bottom of packet tracer. Same as the connections, relays etc. With this you can build a simulation network.
Ping send a ICMP packets to check if they get a response. In the OSI model this is in the network layer. It stands for internet control messaging protocol (ICMP). This is used to send messages to check the connectivity. ICMB echo and ICMB echo reply these are the types used in the ping command.
Three types of reply in icmp:
Request time out – means that the sender managed to send a package, then it starts a timer, the timer finished before the sender receiving a reply
Reply - Sender sent the package and the sender received the response before the timer was over
Destination host unreachable – when the host itself doesn’t know how to send the package, trying to send a package but the host doesn’t know which route to send the package through

Don’t rely on the icmp messages in packet tracker they are not the standard

Switches in a network send the signal to the right IP requested. Switches tries to find out if there is a loop in the topology to try and break it. So it take 50 seconds to set up the link.

DATA-LINK LAYER
The ICMP is the first protocol to stop in your network for security reasons.


The data link layer prepares the network data to be sent on the physical network.


Send the data from a network interfaces card to the next network interface card. So it works in the local network.
NIC-to-NIC communications within the same network
Prepares network data for the physical network
Ethernet is only one type of protocols/devices used in LAN

The logical network is sending data outside of you local network(physical network).

Ethernet Family
The most common type of local area network (LAN) is the ethernet
Connection mode:
-	Half-duplex mode: It either sends or receive data, cannot do both
-	Full-duplex mode: you can send and receive at the same time

Layer 2 (L2) switch
-	Made up of integrated circuits and the accompanying software that controls the data paths through the switch
-	It is composed of several ports. Each port is used to connect to an end-device or to another intermediary device
-	Forward the traffic (based on the destination MAC address) received on a port to another port where the destination is connected
-	The switch knows which MAC is on which port, since it builds a cache table that will be built based on source MAC addresses. This is because when a PC sends a frame it will send its own MAC address.
-	If the switch doesn’t know who the frame belongs to then it broadcasts it to everyone, except the one it came from.
The switch isn’t secure since you can either spoof the MAC address or overload it so you receive the message.
In the switch every port has it own MAC address, they are all treated as a NIC.

Data-Link Encapsulation

The data-link will adds its own information/header
The destination MAC is the address of the destination NIC card, however how do we know this?  You need to use the Address Resolution Protocol (ARP)
ARP:
-	ARP is the Layer 2 protocol that is used to find the MAC address of the NIC (on the same network) that has certain IP address.
-	Mechanism: if you need the AC of an IP address, broadcast on your network, all devices on your network will receive the broadcast request, only the concerned device(i.e NIC that has the IP address) will reply.
-	Broadcast: ARP can fill the destination MAC with(ff:ff:ff:ff:ff:ff = 11111111.11111111.11111111.11111111.11111111.11111111) and this is reserved to broadcast
In command prompt
arp      gives the help for the arp command
arp -a       gives the cached MAC address
arp -d        will delete the cache
The switch doesn’t deal with IP addresses.

Network Layer



A router is networking device that forwards (routes) the traffic between computer networks .

The router doesn’t forward any broadcast frames. Each interface on the router is a broadcast domain. It connects networks that have different network id. It can connect networks that are using different technologies (e.g ethernet,ADSL, braodband)
In router you need to configure the port. Ina switch you don’t
By default in cisco switch ports are on but router ports are off so you have to turn them on manually.
A router acts like a host, but with the ports acting as NIC cards that rout between them. So each port has to have it’s own IP address witht the same network ip as the network it is connected to.
We have some practices to set up a router IP for each network, some take the first IP some take the one before the broadcast Ip some keep it random. But the network IP has to be the same.
So a network 192.168.1.0 connects to a router
Then the router IP we can use for example is 192.168.1.200
You need to do this for each port in a router
The router also needs to have the default gateway setup. The default gateway for a PC is the router interface. This is the same gateway for all PCs on a system connecting to the same router. Telling the host whenever you want to talk to a netwrk outside of your network send it to the default gateway to take care of.

Defualt gateway:
-	It’s the router interface that is connected on a network reachable from the host
-	It’s the IP address of the router for that network, this is setup on the PCs
-	It’s the IP address of the NIC of the router
-	A host uses it in case it wants to send data to another host in a different network


The datalink layer connects to the router from a network, the network layer connects to the pc’s in a network.

You must make sure that all PC’s have a default gate way set up or it cannot send a response to a request, also that all the switches has the MAC addresses of the PC’s in the system otherwise an incoming address cannot find them.

The most simple router is a computer that has 2 NIC at least
You can turn any computer into a router if you have the software and more than 2 NICs
The router will list all known network addresses to a routing table

Whenever the router receives a new packet to be delivered it will check the destination IP address and compare it to the rows in the table.  
The metric (hop count), this syas how many steps should I take in order  to get to the network
Routing
-	The routing between 2 routers
-	Make sure routers have enough ports
-	There is a broadcast domain between the 2 routers, and a network connecting the 2 routers (this means you need addresses for this network)
-	You need Ip addresses for the two routers ports to see each other, since they are in the same network just use the same subnet mask and network ID but any host id is fine.
-	Now you need to set up a way for router 1 to see the connected networks of router 2 and vice versa
-	There are 2 solutions static routing or dynamic routing (DCHP)

Directly connected networks are networks connected to the router directly, the router at any time is to do forwarding and routing for packets. The router can say at any moment what are the networks I can serve. What are the routers that are directly connected to me, what networks do I have IP addresses from. Essentially they are networks that are connected to a router with no intermediary routers in between so no hop count.
The first thing added to a routing table will be the networks It is directly connected to. It will have learned these from the physical connections to itself.











The initial routing tables with no setup of static routing, they cannot see the others connected networks

Static routing
Is assuming there will be no change in network so you manually telling the router how to access a network on another router.
To set this up you go to config and will find under static
Network – this is the networks it doesn’t know so you have to input It
Mask – subnet mask of the network you are adding
Next hop – the ip of the router you are jumping to (NOT JUST THE NETWORK IP BUT ALL OF IT), the next step. This is because to reach the network you have to go through this router since the network you want is attached to this router.
Routers just deliver the packets to the next router then forget about the packets. You only add the next step. So you manually add the next steps for it to know.


-	A static route is the route that is configured and added manually to the router (for larger amounts of routers this becomes untenable)
Dynamic routing
-	A network technique that provides optimal data routing
-	Unlike static routing, dynamic routing enables routers to select paths according to real-time logical network layout changes (routers keep updating routes using metric counts etc to find best route)
-	It uses multiple algorithms and protocols  
-	The most popular are Routing Information Protocol(RIP) and Open Shortest Path First (OSPF). There are other ones
-	Dynamic routing protocols allow routers to share information about the network with other routers to allow them to select the best path to reach a destination
-	Dynamic Routing protocols are able to recalculate and re-route traffic when more optimal paths are found
Protocols:
-	RIP
-	IGRP
-	OSPF
-	EGP
-	EIGRP
-	BGP
Not always the most secure as the bad actors can poison routing tables to try and access your packets.
