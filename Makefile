bootstrap:
	cfy install openstack.yaml \
		-b playbox \
		-i server_name=playbox

uninstall:
	cfy uninstall playbox -p ignore_failure=true
