#!/bin/sh

ns_send_msg $1 $2
echo -n "sent to "
ns_who $1