tinyproxy cookbook
==================

This cookbook installs and configures tinyproxy.

Requirements
-----------

This cookbook is confirmed on CentOS only.

#### packages
- `epel` - this cookbook needs epel to install tinyproxy.

Attributes
--------

TBD

Usage
-----

Just include `tinyproxy` in your node's `run_list`:

```json
{
  "run_list": [
    recipe[tinyproxy]"
  ]
}
```

Recipes
------

tinyproxy::default

TBD

Contributing
----------

TBD


License and Author
----------------

Authors:: Jean-Francois Theroux (<failshell@gmail.com>), sekia
