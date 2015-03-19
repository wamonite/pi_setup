# Raspberry Pi Setup

## Installation

* Install the latest raspbian image
* Boot and find initial DHCP ethernet IP address
* SSH in, run raspi-config and reboot
* Copy SSH public key to ~pi/.ssh/authorized_keys
* Install Python pip 'requirements.txt'
* Copy ethernet IP address into 'inventory'
* Run ./provision.sh
* Reboot pi
* Replace ethernet IP address in 'inventory' with wifi IP address or host
