/*
1. PostgreSQL has built-in support for json including complete indexing support

*/

CREATE TABLE table_network (
	ip_inet INET, -- IPv4 and IPv6 networks
	ip_cidr CIDR, -- IPv4 and IPv6 hosts networks
	mac_address MACADDR, --	MAC addresses
	mac_address8 MACADDR8 --MAC addresses (EUI-64 format)
);

INSERT INTO table_network (ip_inet, ip_cidr, mac_address, mac_address8) VALUES 
(
	'192.168.0/25',
	'192.168/25',
	'08:00:2b:01:02:03',
	'08:00:2b:01:02:03:04:05'	
);

SELECT * FROM table_network;

