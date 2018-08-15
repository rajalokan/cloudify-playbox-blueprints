openstack:
	cfy install openstack.yaml -b playbox

output:
	cfy dep output playbox

uninstall:
	cfy uninstall playbox
