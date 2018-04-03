#How The Internet Works Essay

	In order for your browser to display websites to your standard output
The website name must be turn into it's equivalent *IP Address*. We are 
accustomed to typing actual names for example *www.linux.org* the problem 
with this is that the computer does not understand this so the browser 
queries a program called *DNS*. The *DNS* or Domain Name Server is what your
computer talks to in order to translate host names to *IP address.* 
The servers also talk to each other to stay up to date in all the information
they need to resolve hostnames to IP addresses. In order for your brower to 
resolve *www.linux.org* to it's equivalent IP address of 104.28.16.26 your 
nameserver may query up to four different sites across the network. Once
your machine knows the *IP address* of the website, your machine can now 
exchange bits directly.
	Understanding DNS or Domain Name Systems can be very complicated.
In the reading assignment the author makes it easy to grasp the overall 
concept, which I will try to explain in more simple terms. There is a 
network of programs and databases that cooperate to translate hostnames
to IP addresses which is called *DNS* or (Domain Name System). A domain 
is a collection of machines that share a common name suffix which means 
that domains can live inside other domains. The example given is that
machine www.tldp.org lives in the .tldp.org subdomain of the .org domain.
Every domain is defined by an authoriative name server that knows the IP
address of the other machines in that domain. The authoritative name server
may have backups in case it goes down which refreshes every few hours. 
	The name servers for a domain do not have to know the locations of
all the machines in other domains including their own subdomains, they only
need to know the locations of the nameservers. For the example given before
the authoritative name server for the .org domain knows the IP address of 
the nameserver for .tldp.org but NOT the address of all the other machines 
in .tldp.org. The domains in the DNS sytem are arranged like a big inverted
tree. At the very top you have the root server. The root server's IP is
wired into your DNS sofware. The root server knows the IP addres of the 
nameservers for the top-level domains like .com and .org but not the 
addresses of machines inside those domains. Each top-level domain server
knows where the nameserver for the domain directly beneath it are, and
so forth.
	So what happens when you ask for the website www.blabla.org? 
well first, your nameserver asks a root server to tell it where it can 
find a nameserver for the .org domain. Second, it asks the top-level domain
server to tell it the IP address of the blabla.org nameserver. Third, it 
asks the blabla.org nameserver to tell it the address of the host 
www.blabla.org.
	Looking at it in more detail: A packet that contains a GET 
command is sent to the web server on www.blabla.org. The packets contains
the Source IP and destination IP along with the service number or port
number. This packet gets sent to your ISP or local network until it gets
to the router. The routers are in charge of delivering the packet and routing
the communication that will follow. 
