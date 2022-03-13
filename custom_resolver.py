from twisted.internet.interfaces import IResolver
from twisted.names.client import Resolver
from twisted.names.dns import Message
from twisted.names import dns, error, common
from twisted.python.failure import Failure
import re, os
import find_urls as fu


class RRRResolver(Resolver):

    def __init__(self, path, **kwargs):
        super().__init__(**kwargs)
        self.blocked_urls = set()
        try: self.blocked_urls = fu.fetch_set_of_urls_from_file(path)
        except OSError: print('Try of openning file failed')
        if self.blocked_urls != set():
            # list of addresses to remove
            self.blocked_urls.difference_update(['0.0.0.0', 'github.com'])
        print(self.blocked_urls)

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
