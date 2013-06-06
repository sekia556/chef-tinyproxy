default[:tinyproxy][:user] = 'tinyproxy'
default[:tinyproxy][:group] = 'tinyproxy'

default[:tinyproxy][:port] = 8888
default[:tinyproxy][:listen_address] = '0.0.0.0'
default[:tinyproxy][:timeout] = 600

default[:tinyproxy][:logging][:mode] = 'syslog' # either file or syslog
default[:tinyproxy][:logging][:file] = '/var/log/tinyproxy/tinyproxy.log'
default[:tinyproxy][:logging][:level] = 'Info' # Info, Connect, Notice, Warning, Error, Critical

default[:tinyproxy][:pid_file] = '/var/run/tinyproxy/tinyproxy.pid'

default[:tinyproxy][:allow] = [ '127.0.0.1' ]

default[:tinyproxy][:disableviaheader] = 'Yes'
