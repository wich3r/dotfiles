# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
#status.register("pulseaudio",
 #   format=" {volume}",)

#status.register("color",)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format=" %b %-d %H:%M",)

# Shows your CPU temperature, if you have a Intel CPU
# status.register("temp",
#     format="{temp:.0f}°C",)

# Displays whether a DHCP client is running
# status.register("runwatch",
#     name="DHCP",
#     path="/var/run/dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#

status.register("weather",
                location_code="USFL0038",
                units="imperial",
                format="{current_temp} {current_wind}",)

# status.register("network_graph",
#                 interface="enp1s0",)

# status.register("network_graph",
#                 interface="enp1s0",
#                 graph_type="output",)

status.register("network_traffic",
                interface="wlan0",
                format="{interface}    {bytes_sent}    {bytes_recv}",)
# Note: the network module requires PyPI package netifaces


status.register("network",
    interface="wlan0",
    format_up="{v4}",)
    
# Has all the options of the normal network and adds some wireless specific things
# like quality and network names.
#
# Note: requires both netifaces and basiciw
# status.register("wireless",
#     interface="wlan0",
#     format_up="{essid} {quality:03.0f}%",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
# status.register("disk",
#     path="/",
#     format=" {used}G",)


# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
#status.register("load",
#                format=" {avg1} {tasks}",)              

#status.register("mem",
#                format=" {avail_mem}",)

#status.register("cpu_usage")

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
# status.register("mpd",
#     format="{title}{status}{album}",
#     status={
#         "pause": "▷",
#         "play": "▶",
#         "stop": "◾",
#      },)

#status.register("now_playing",
#    format="   {artist}  {title}  {song_elapsed}/{song_length} {status}",
#    color="#AAC4C8",
#    status={
#         "pause": "",
#         "play": "",
#         "stop": "",
#      },)            

status.run()