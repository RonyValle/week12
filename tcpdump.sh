#!/bin/bash
#
# SCRIPT: Example_Script_To_Daniel_Miesser's_tcpdump_Tutorial
# AUTHOR: Rony_Valle_Lopez
# DATE:   April_03_2018

clear
echo ""
echo -e "The following Script MUST be run as root so please enter your password:\n"
su
echo""
echo -e "Welcome to Rony's tcpdump script!\n "
sleep1
# The following are the ways in which we can use the tcpdump command

echo -e "This is the list of available interfaces:"
tcpdump -D

echo ""
# Launches Firefox and opens the Saint Paul College Website
firefox http://saintpaul.edu

# This command will capture 10 packets of the above connection.
echo "Your 10 Packets:"
tcpdump -c10 host 204.77.53.33

#Shows Traffic to port 80(HTTP).
echo -e "Two packets from port 80 will be writtne to igotyou_file:\n"
tcpdump -c2 port 80 -w igotyou_file
echo ""
echo -e "igotyou_file is of the following file type:"
file igotyou_file
echo ""
echo "We will now read the igotyou_file:"
tcpdump -r igotyou_file
echo ""
#find Traffic Using a port Range
echo "Traffic from port range 21-443:"
tcpdump portrange 21-443
echo "The following mill not work because of invalid IP Adresses:"
#Packets Sent from a specific IP and Destined to Specific Port
tcpdump -nnvvS src 10.40.80.99 and dst port 2435

#Show  traffic on one protocol
echo "Traffic to Protocol icmp:"
tcpdump icmp



