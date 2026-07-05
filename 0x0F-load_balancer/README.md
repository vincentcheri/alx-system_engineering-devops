################################
# 0-custom_http_response-header #
#################################

- Listens on port 80
- Returns "Hello World" at root
- 301 redirect at `/redirect_me`
- Custom 404 page
- X-Served-By` header with hostname

################################
#   1-install_load_balancer     #
#################################

- Updates and Upgrade Packages then install haproxy
- Configures haproxy to be fully ready for load balancing

###############################################
#  2-puppet_custom_http_response-header.pp     #
###############################################

- This is a puppet manifest to create a custom HTTP header response
