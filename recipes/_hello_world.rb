directory node['dani-serv']['webroot'] do
	owner 'www-data'
	group 'www-data'
	mode 0755	
	action :create
end

file "#{node['dani-serv']['webroot']}/index.html" do
	owner 'www-data'
	group 'www-data'
	mode 0755
	content 'Hello World'
	action :create
end