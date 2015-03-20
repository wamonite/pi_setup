# Raspberry Pi Setup

## Installation

* Install the latest [raspbian image](http://www.raspberrypi.org/downloads/).
* Plug in the ethernet cable, power up the Pi and find the IP address provided by DHCP.
* SSH in to the Pi, run [raspi-config](http://www.raspberrypi.org/documentation/configuration/raspi-config.md) and reboot.
* Copy your SSH public key to `~pi/.ssh/authorized_keys`.
* On your host PC, ensure you have Python and the `requirements.txt` modules installed.
* Create your Ansible `inventory` file and add the Pi IP address or host name.
* To configure wifi and git, the following Ansible variables can be added to the `inventory` line:-
    * `wifi_ssid`: SSID name of a local WPA2 access point.
    * `wifi_password`: Password for the specifed access point.
    * `git_name`: Name to be set in the git config file.
    * `git_email`: Name to be set in the git config file.
    * Here is an example `inventory` entry for a Pi at 192.168.1.2:-

        192.168.1.2 wifi_ssid=mywifi wifi_password=wifipassword123 git_name='Me' git_email='me@example.com'

* Run `./provision.sh`.
* Reboot the Pi.
* If you enabled wifi, don't forget to replace the IP address or host name in the `inventory` file with your wireless IP address or host name.

## Contact

          @wamonite     - twitter
           \_______.com - web
    warren____________/ - email
