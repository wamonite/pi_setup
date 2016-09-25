# Raspberry Pi Setup

## Installation

* Install the latest [raspbian image](http://www.raspberrypi.org/downloads/).
* Plug in the ethernet cable, power up the Pi and find the IP address provided by DHCP.
* Log in to the Pi and copy your SSH public key to `~pi/.ssh/authorized_keys`.
* On your host PC, ensure you have Python and the `requirements.txt` modules installed.
* Create your Ansible `inventory` file and add the Pi IP address or host name.

## Inventory Parameters

The script behaviour is determined by Ansible variables set in the `inventory`:-

### Config

* `hdmi_group`: value to set in the [boot config](https://www.raspberrypi.org/documentation/configuration/config-txt.md) (default: 0).
* `hdmi_mode`: value to set in the [boot config](https://www.raspberrypi.org/documentation/configuration/config-txt.md) (default: 16).
* `gpu_mem`: GPU memory in MB (default:128).
* `camera`: enable the camera.
* `w1_gpio`: enable one-wire GPIO.

### Wifi

* `wifi_ssid`: SSID name of a local WPA2 access point.
* `wifi_password`: Password for the specifed access point.

### Git

* `git_name`: Name to be set in the git config file.
* `git_email`: Name to be set in the git config file.

### IP Camera

* `camera_server`: Enable the camera as an RTSP server.

### Docker

* `docker`: Enable Docker daemon on an insecure socket on port 2375.

----

Here is an example `inventory` entry for a Pi with the hostname `mypi`:-

        mypi wifi_ssid=mywifi wifi_password=wifipassword123 git_name='Me' git_email='me@example.com'

Run `./do_provision.sh`, which will reboot the Pi if necessary.
	* If you enabled wifi, you may need to replace the IP address or host name in the `inventory` file with the updated IP address or host name.

## TO DO

* Enable user name and password on IP camera server.
* Enable SSL certificates for Docker daemon.

## Contact

          @wamonite     - twitter
           \_______.com - web
    warren____________/ - email
