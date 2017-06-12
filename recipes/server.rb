package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "<h1> Hola Chef</> \n

        <h2>ipaddress:#{node['ipaddress']}</h2>

        "
	action :create
end	

service 'httpd' do
	action [:enable,:start]
end
