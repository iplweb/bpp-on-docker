#!/usr/bin/env python3

import json
import sys
from urllib import request    
from pkg_resources import parse_version    

def versions(pkg_name):
    url = 'https://pypi.python.org/pypi/%s/json' % pkg_name
    data = request.urlopen(url).read()
    if hasattr(data, "decode"):
        data = data.decode("utf-8")
    releases = json.loads(data)['releases']
    return sorted(releases, key=parse_version, reverse=True)    

if __name__ == '__main__':
    print(*versions(sys.argv[1]), sep='\n')
