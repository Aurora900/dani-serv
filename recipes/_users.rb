group 'dani'
user 'dani' do
	home '/home/dani'
	password node['dani-serv']['password']
	shell '/bin/bash'
	gid 'dani'
	supports manage_home: true
end