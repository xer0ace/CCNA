
config t 
vlan 25
name NSO.GOV.PH
int vlan 25
no shut
ip add 10.0.0.65 255.255.255.192
ip dhcp Excluded-Add 10.0.0.65 10.0.0.69
ip dhcp pool NSO.GOV.PH
network 10.0.0.64 255.255.255.192
default-router 10.0.0.65
domain-name NSO.GOV.PH0
dns-server 10.51.1.10
option 150 ip 10.51.100.8
do sh run | sec dhcp
int fa 0/5
switchport access vlan 25

for NSO.gov.ph:

config t 
vlan 25
name ____.com
int vlan 25
no shut
ip add 10.0._._ 255.255._.___
ip dhcp Excluded-Add 10.0._._ 10.0._.___
ip dhcp pool ____.com
network 10.0._._ 255.255._.__
default-router 10.0._._
domain-name ____.com
dns-server 10.m.1.10
option 150 ip 10.m.100.8
do sh run | sec dhcp
int fa 0/5
switchport access vlan 25


config t 
vlan 25
name PNP.GOV.PH
int vlan 25
no shut
ip add 10.0.1.1 255.255.255.0
ip dhcp Excluded-Add 10.0.1.1 10.0.1.20
ip dhcp pool PNP.GOV.PH
network 10.0.1.0 255.255.255.0
default-router 10.0.1.1
domain-name PNP.GOV.PH
dns-server 10.51.1.10
option 150 ip 10.51.100.8
do sh run | sec dhcp
int fa 0/5
switchport access vlan 25

=========================
Design and configure a call center for ETELECARE.com with 4800 RESPONDERSAgents, TLs, PMs
using 10.0.0.0/8 use riven Method: "C.S.I."

CONVERT: 4800 = 13bits
SUBTRACT: /32 - /13 = 19 3rd octet 32i
Ipasok: 10.0.32.0
ETELECARE.com: 10.0.32.0
1st 10.0.32.1: lastusable:10.0.63.254
broadcast:10.0.63.255
NOTETELECARE.com:10.0.64.0/19
===================================
config t 
vlan 25
name ETELECARE.com
int vlan 25
no shut
ip add 10.0.32.1 255.255.255.0 //first usable
ip dhcp Excluded-Add 10.0.32.1 10.0.32.100
ip dhcp pool ETELECARE.com
network 10.0.32.0 255.255.255.0
default-router 10.0.32.1 //first valid
domain-name ETELECARE.com
dns-server 10.51.1.10
option 150 ip 10.51.100.8
do sh run | sec dhcp
int fa 0/5
switchport access vlan 25

 ===================================

TASK 8

 Give ip to p1 p2 and lipat sa vlan 10
 @ p1
 config t 
 int e0/0
 ip add 10.2.1.101. 255.255.255.0
 no shut

  @ p1
 config t 
 int e1/0
 ip add 10.2.1.102 255.255.255.0
 no shut
 

 @A1
 config t 
 int e0/0
 switchport access vlan 10 
 end


 @A2
 config t 
 int e1/0
 switchport access vlan 10 
 end
 
=================================
Task 9
Static route to End Devices
p1: 10.1.4.4/30 10.2.2.0/24 192.168.1.128/27 gw 10.2.1.1

p2: 10.1.4.4/30 10.2.2.0/24 192.168.1.128/27 gw 10.2.1.2

@p1:
config t 
ip route 10.1.4.4 255.255.255.252 10.2.1.1
ip route 10.2.2.0 255.255.255.0 10.2.1.1
ip route 192.168.1.128 255.255.255.224 10.2.1.1

@p2
config t
ip route 10.1.4.4 255.255.255.252 10.2.1.2
ip route 10.2.2.0 255.255.255.0 10.2.1.2
ip route 192.168.1.128 255.255.255.224 10.2.1.2

--- do sh run |     inc route
==================================
Task 10 Sana all
--- Default Route
@p1
config t
no ip route 10.1.4.4 255.255.255.252 10.2.1.1
no ip route 10.2.2.0 255.255.255.0 10.2.1.1
no ip route 192.168.1.128 255.255.255.224 10.2.1.1
ip route 0.0.0.0 0.0.0.0 10.2.1.1

@p2
config t
no ip route 10.1.4.4 255.255.255.252 10.2.1.2
no ip route 10.2.2.0 255.255.255.0 10.2.1.2
no ip route 192.168.1.128 255.255.255.224 10.2.1.2
ip route 0.0.0.0 0.0.0.0 10.2.1.2