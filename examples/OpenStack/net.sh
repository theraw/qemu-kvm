#!/bin/bash
ovs-vsctl add-port dope eth0
ifconfig eth0 0
