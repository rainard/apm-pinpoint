#!/bin/bash

rsync -av $1  \
	--delete-after \
	--exclude="*/log/" \
	--exclude="*/temp" \
	--exclude="*/work" \
	--exclude="*logs/"  \
	--exclude="pinpoint-collector.properties"  \
	--exclude="*.out" ./   \
	--exclude=templates \
	--exclude="ansible*" \
	172.25.33.231:/opt/apm/
