#!/bin/sh
sudo -u postgres createdb oauth_uapi
sudo -u postgres createuser uapi
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE oauth_uapi TO uapi"
