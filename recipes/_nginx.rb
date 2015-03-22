include_recipe 'nginx'

template '/etc/nginx/sites-available/hello_world' do
	owner 'www-data'
	group 'www-data'
	mode 0760
    source 'templates/hello_word.erb'
    variables ({
    	:webroot => node['dani-serv']['webroot']
    })
    notifies :restart, 'service[nginx]'
    action :create	
end

nginx_site 'hello_world'