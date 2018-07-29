openstack:
	cfy bl upload openstack.yaml -b playbox \
		&& cfy dep create playbox -b playbox --skip-plugins-validation \
		&& cfy exec start -d playbox install

output:
	cfy dep output playbox

uninstall:
	cfy uninstall playbox

ansible:
	cfy exec start execute_operation \
		-d playbox \
		-p operation=cloudify.interfaces.lifecycle.create \
		-p node_ids=dotfiles -vv
