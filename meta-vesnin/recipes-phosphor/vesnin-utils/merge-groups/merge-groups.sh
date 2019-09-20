#!/bin/sh -e

# Create groups if not available
for i in web ipmi redfish priv-admin priv-operator priv-user priv-callback; do
    ( grep -q $i /etc/group ) || groupadd -f -r $i
done

# Root and admin needs to be a member of these groups
for i in ipmi web redfish priv-admin; do
    ( id -nG root | grep -q $i ) || usermod -a -G $i root
    ( id -nG admin | grep -q $i ) || usermod -a -G $i admin
done

