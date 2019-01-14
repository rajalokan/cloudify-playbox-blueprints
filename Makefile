bootstrap:
	cfy install openstack.yaml \
		-b playbox \
		-i server_name=playbox

uninstall:
	cfy uninstall playbox -p ignore_failure=true

output:
	cfy deployment outputs playbox

#///////////////////////////////////////////////////////////////////////////////

bootstrap_cluster:
	cfy install openstack.yaml \
		-b playbox_cluster \
		-i server_name=playbox \
		-i resource_count=3

uninstall_cluster:
	cfy uninstall playbox_cluster -p ignore_failure=true

#///////////////////////////////////////////////////////////////////////////////

debug:
	cfy install debug.yaml \
		-b debug \
		-i server_name=playbox

debug_uninstall:
	cfy uninstall debug -p ignore_failure=true
