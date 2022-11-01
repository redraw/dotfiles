""" ~/.ipython/profile_default/startup/00-sqlf.py
Requires sqlparse (`pip install sqlparse`)

Example:
In [1]: %sqlf Site.objects.all().query
SELECT `django_site`.`id`,
       `django_site`.`domain`,
       `django_site`.`name`
FROM `django_site`
ORDER BY `django_site`.`domain` ASC
"""
from __future__ import print_function

import sys
from IPython.core.magic import register_line_magic

    
@register_line_magic
def sqlf(line):
    try:
        import sqlparse
    except ImportError as e:
        print("[line-magic] %sqlf requires `pip install sqlparse`")

    output = eval("str(%s)" % line)
    print(sqlparse.format(output, reindent=True))
