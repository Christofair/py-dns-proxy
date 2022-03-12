from custom_resolver import RRRResolver
from twisted.internet import reactor
from twisted.names import client, server, dns, hosts
from custom_resolver import RRRResolver
import re, os


def main():
    factory = server.DNSServerFactory(
            clients=[ RRRResolver('adservers.txt', servers=[('1.1.1.1', 53)])]
            )
    protocol = dns.DNSDatagramProtocol(controller=factory)
    reactor.listenUDP(53, protocol)
    reactor.run()

if __name__ == "__main__":
    main()
