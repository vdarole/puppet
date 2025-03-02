file {'motd':  # Creation of /etc/motd file 
path => '/etc/motd',
content => 
'################################################################
# Welcome to Darole.org                                        #
# All Connection are monitored and recorded                    #
# Disconnect IMMEDIATELY if you are not an authorized user !!! #
################################################################
',
}
