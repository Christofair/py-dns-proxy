from twisted.application import service, internet
from custom_resolver import RRRResolver
from twisted.names import client, server, dns, hosts

port = 53

# Create a MultiService, and hook up a TCPServer and a UDPServer to it as
# children.
dnsService = service.MultiService()
rResolver = RRRResolver('adservers.txt', servers=[('1.1.1.1', 53)])
tcpFactory = server.DNSServerFactory([rResolver])
internet.TCPServer(port, tcpFactory).setServiceParent(dnsService)
udpFactory = dns.DNSDatagramProtocol(tcpFactory)
internet.UDPServer(port, udpFactory).setServiceParent(dnsService)

# Create an application as normal
application = service.Application("CustomDNS")

# Connect our MultiService to the application, just like a normal service.
dnsService.setServiceParent(application)
dnsService.startService()