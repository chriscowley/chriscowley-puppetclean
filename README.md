### What Puppet clean affects

Creates a script that will clean up `/var/lib/puppet/reports` as it can get rather large. Any reports older than 2 weeks will be purged.

Creates a Cron job to run that script once a week
