from twisted.internet.interfaces import IResolver
from twisted.names.client import Resolver
from twisted.names.dns import Message
from twisted.names import dns, error, common
from twisted.internet import defer
from twisted.internet.defer import Deferred
from twisted.python.failure import Failure
import hashlib
import re, os
import time
import find_urls as fu

class DNSProtocolExtension(dns.DNSDatagramProtocol):

    def datagramReceived(self, data, addr):
        m = dns.Message()
        try:
            m.fromStr(data)
            for query in m.queries:
                address = str(query.name)
                if self.is_blocked(address):
                    # print( "address %s has been filtered" % (address,))
                    return  # koniec przetwarzania adresu
                else:
                    print(address)
            if m.id in self.liveMessages:
                d, canceller = self.liveMessages[m.id]
                del self.liveMessages[m.id]
                canceller.cancel()
                # XXX we shouldn't need this hack of catching exception on callback()
                try:
                    print('call d.callback')
                    d.callback(m)
                except BaseException:
                    log.err()
            else:
                if m.id not in self.resends:
                    self.controller.messageReceived(m, self, addr)
        except:
            super().datagramReceived(data, addr)

    # def is_blocked(self, domain_name):
    #     try: hash = hashlib.sha256(domain_name.encode('ascii'))
    #     except: return False
    #     while True:
    #         block = self._blocked_adresses_file.read(hash.digest_size)
    #         if block == b'':  # end of file
    #             break
    #         if block == hash.digest():  # found address in block file
    #             return True
    #     return False


class RRRResolver(Resolver):

    def __init__(self, path, **kwargs):
        super().__init__(**kwargs)
        # try:
        #     self._blocked_adresses_file = open(path, 'rb')
        # except OSError:
        #     self._blocked_adresses_file = open('emptyfile','wb')
        #     self._blocked_adresses_file.close()
        #     self._blocked_adresses_file = open('emptyfile','rb')
        self.blocked_urls = set()
        try: self.blocked_urls = fu.fetch_set_of_urls_from_file(path)
        except OSError: print('Try of openning file failed')
        if self.blocked_urls != set():
            # list of addresses to remove
            self.blocked_urls.difference_update(['0.0.0.0', 'github.com'])
        print(self.blocked_urls)

    # def is_blocked(self, domain_name):
    #     local_decode = lambda dn: dn.encode('ascii') if type(dn) is str else dn
    #     hash = hashlib.sha256(local_decode(domain_name))
    #     while True:
    #         block = self._blocked_adresses_file.read1(hash.digest_size)
    #         if block == b'':  # end of file
    #             break
    #         if block == hash.digest():  # found address in block file
    #             return True
    #     return False

    def query(self, query, timeout):
        if str(query.name) in self.blocked_urls:
            print('refused %s' % str(query.name))
            raise error.DNSQueryRefusedError
        else:
            print(str(query.name))
            return super().query(query,timeout)
        # r = None
        # while r is None:
        #     r = self.is_blocked(str(query.name))
        # if not r:
        #     print('lecymy durs')
        #     d = super().query(query, timeout)
        # else:
        #     print('witryna zablokowana')
        #     raise error.DNSQueryRefusedError
        # return d
        # def cbLooook(r):
        #     if not r: 
        #         print('lecymy durs')
        #         return super(RRRResolver, self).query(query, timeout)
        #     else: 
        #         print('witryna zablokowana')
        #         raise error.DNSQueryRefusedError
        # d.addCallback(cbLooook)
