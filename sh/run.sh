#!/bin/bash
/usr/local/bin/supervisord -n -c /etc/supervisord.conf
cd /usr/local/cozy-indexer/cozy-data-indexer;. ./virtualenv/bin/activate; /usr/local/cozy-indexer/cozy-data-indexer/virtualenv/bin/python server.py