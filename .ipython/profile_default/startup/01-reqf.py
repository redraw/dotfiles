""" ~/.ipython/profile_default/startup/00-sqlf.py
Format response objects from psf/requests library.

Example:
    In [1]: %reqf response
"""
from __future__ import print_function
import json

from IPython.core.magic import register_line_magic, needs_local_scope


def print_headers(headers):
    print("\n".join(f"{name}: {value}" for name, value in headers.items()))


def print_response(response):
    # Request
    request = response.request
    print(f"{request.method} {request.path_url}")
    print_headers(request.headers)
    print()
    if "application/json" in request.headers["content-type"]:
        print(json.dumps(json.loads(request.body), indent=2))
    else:
        print(request.body)
    print()
    print()

    # Response
    print(f"HTTP/{'.'.join(str(response.raw.version))} {response.status_code} {response.reason}")
    print_headers(response.headers)
    print()
    if "application/json" in response.headers["content-type"]:
        print(json.dumps(response.json(), indent=2))
    else:
        print(response.text)

    
@needs_local_scope
@register_line_magic
def reqf(line, local_ns):
    print_response(local_ns[line])

