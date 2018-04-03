# TLDPs Routing Primer Essay

	The author starts by providing the following definition of what is IP
routing: *IP Routing is the process by which a host with multiple network
connections decides where to deliver IP datagrams it has received.*
An example is given of a typical office router, which might have a PPP link
off to the Internet, a number of ethernet segments feeding the workstations 
and another PPP link off to another office. When the router receives a
datagram on any of its network connections, routing is the mechanism that 
is uses to determine which interface is should send the datagram to next.
Simple hosts also need to route acording to the article. All Internet hosts 
have two network devices, one is the loopback interface and the other is one
it uses to talk to the rest of the network. This could be Ethernet, PPP or
SLIP serial interface.
	The way routing works acording to the article is that each host
keeps a special list of routing rules, called a routing table. The table 
contains rows which typically contain at least three fields, first is 
destination address the Second is the name of the interface to which
the datagram is to be routed and the third is optionally the IP address
of another machine which will carry the datagram on its next step 
through the network. 
	The routing process is as follow: An incoming datagram is 
received, the destination address is examined and compared with each entry
in the table. The entry that best matches that address is selected and the 
datagram is forward to the specified interface. If the gateway field is
filled then the datagram is forward to that host via the specified interface,
otherwise the destination address is assumed to be on the network supported
by the interface. The `route` command is used to manipulate the table.
This command takes command line arguments and converts them into kernel
system calls.
	So if you have a small ethernet network that is class C with the 
network address: 192.168.1.0 You IP address: 192.168.1.10
Default gateway IP address: 192.168.1.1 The question now is, How would
you configure all this is your computer? well you would use the `route`
command to manipulate the routing table. So first you would configure
the interface by using the following command *ifconfig eth0 192.168.1.10 
netmask 255.255.255.0 up* Following is where you use the *route* command
to manipulate the routing table. This tells the kernel that datagrams for
all hosts with addresses that match 192.168.1.* should be sent to the
ethernet device. Use the following commands: *route add -net 192.168.1.0
netmask 255.255.255.0 eth0* The last part is to configure the default
gateway. The following command is used: *route add default gw 
192.168.1.1 eth0*
	
