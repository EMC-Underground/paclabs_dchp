dhcpd:
  image: joebiellik/bind

  net: host

  volumes:
    - ./dhcpd.conf:/etc/dhcp/dhcpd.conf
