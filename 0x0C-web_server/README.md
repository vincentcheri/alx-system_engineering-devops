

## 0-transfer_file
- Uses the "scp" command to send files to a remote host
- $1--->PATH_TO_FILE $4--->PATH_TO_SSH_KEYS $3--->USERNAME $2--->IP

## 1-install_nginx_web_server
- Updates and Installs ngin web server
- puts a text in index.html file that sits in the web folder
- Start Nginx

## 2-setup_a_domain_name
- Got a domain name ready to be mapped with an ip via DNS proagation
- Added it to the A RECORD of the vendor of the the domain name

## 3-redirection
- Updates and Installs ngin web server 
- puts a text in index.html file that sits in the web folder
- Added some config to the /etc/nginx/sites-available/default, server block as follows;
- default server listen on port 80 both for ip4 and 1p6 and serves from /var/www/html
- Location block, when the /redirect_me end point is hit, it returns 301 and redirect to https://www.youtube.com/watch?v=QH2-TGUlwu4

## 4-not_found_page_404
- Same config as 3-redirection
- /404.html is served when 404 is encountered
- Also if /404 end point is hit it search /var/www/html when 404 is not found it still serve custom nginx error page

## 7-puppet_install_nginx_web_server.pp
- Puppet file to install nginx and do some basic config
