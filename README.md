# 📁 0x00-shell_basics

- Navigating and manipulating the Linux filesystem.
- Navigated directories using `cd`, `ls`, `pwd`
- Created, moved, copied, and removed files/directories (`touch`, `mkdir`, `cp`, `mv`, `rm`, `rmdir`)
- Used wildcards and globbing for bulk operations
- Understood absolute vs relative paths
- Worked with hidden files and dotfiles
- Explored symlinks using `ln -s`
- Combined commands with `&&`, `||`, and `;`

# 📁 0x01-shell_permissions

- Managing users, groups, and file permissions.
- Changed file ownership using `chown` and `chgrp`
- Modified read/write/execute permissions with `chmod` (symbolic & numeric)
- Managed user/group creation (`useradd`, `groupadd`)
- Understood permission bits (`rwx`, `755`, `644`, etc.)
- Used `sudo` for elevated privileges
- Changed file owner/group ownership recursively
- Managed access control lists (ACLs) basics

# 📁 0x02-shell_redirections

- Input/output redirections and command chaining.
- Redirected stdout with `>` and `>>`
- Redirected stdin with `<`
- Redirected stderr with `2>` and `2>>`
- Combined stdout/stderr using `&>` and `2>&1`
- Piped commands with `|` for chaining
- Filtered text using `grep`, `head`, `tail`, `sort`, `uniq`, `wc`
- Used `cut`, `tr`, `diff`, `patch` for text manipulation
- Understood here-documents (`<<`) and here-strings

# 📁 0x03-shell_variables_expansions

- Shell variables, expansions, and aliases.
- Created and used local vs environment variables
- Used `export` to make variables available to child processes
- Employed path expansion, brace expansion, tilde expansion
- Used command substitution with `$()` and backticks
- Set up persistent aliases in `.bashrc` and `.bash_aliases`
- Manipulated `PATH` environment variable
- Used parameter expansion for string manipulation

# 📁 0x04-loops_conditions_and_parsing

- Bash scripting: loops, conditionals, and parsing.
- Wrote `for`, `while`, `until` loops for iteration
- Used `if`, `elif`, `else` for conditional branching
- Evaluated expressions with `test`, `[ ]`, and `[[ ]]`
- Parsed files, command output, and user input
- Used `case` statements for multi-way branching
- Validated script arguments with `$1`, `$2`, `$#`, `$@`
- Created reusable functions in bash scripts
- Combined with `cron` for scheduled automation

# 📁 0x05-processes_and_signals

- Managing Linux processes and signals.
- Listed processes with `ps`, `top`, `htop`
- Viewed process trees with `pstree`
- Killed processes using `kill`, `pkill`, `killall`
- Handled signals: `SIGTERM` (15), `SIGKILL` (9), `SIGINT` (2), `SIGSTOP`
- Ran processes in background with `&`
- Brought jobs to foreground with `fg` and background with `bg`
- Used `nohup` and `disown` for persistent processes
- Monitored process priority with `nice` and `renice`

# 📁 0x06-regular_expressions

- Pattern matching with regular expressions.
- Used `grep` with basic/extended regex for pattern matching
- Employed `sed` for stream editing and text replacement
- Used `awk` for advanced text processing and reporting
- Built regex for emails, IP addresses, phone numbers, and log parsing
- Understood anchors (`^`, `$`), quantifiers (`*`, `+`, `?`, `{n}`)
- Used character classes (`[a-z]`, `[^0-9]`) and grouping (`()`, `|`)
- Applied regex in `egrep`, `fgrep`, `perl` mode
- Extracted patterns from log files and configurations

# 📁 0x07-networking_basics

- TCP/IP fundamentals.
- Understood OSI model vs TCP/IP model
- Identified IP addresses and port numbers
- Differentiated TCP vs UDP protocols
- Understood encapsulation and data flow
- Explained how data travels across networks
- Used common ports: SSH (22), HTTP (80), HTTPS (443), DNS (53)
- Understood IPv4 vs IPv6 basics

# 📁 0x08-networking_basics_2

- DNS, DHCP, and advanced networking.
- Understood DNS resolution and record types (A, CNAME, MX, TXT)
- Explained DHCP DORA process (Discover, Offer, Request, Acknowledge)
- Distinguished public vs private IP addresses
- Understood NAT and its role in private-to-public translation
- Used subnet masks and CIDR notation (`/24`, `/16`)
- Understood ARP (Address Resolution Protocol) for MAC-to-IP mapping
- Explained difference between LAN, WAN, and internet

# 📁 0x09-web_infrastructure_design

- Designing scalable web infrastructure.
- Designed single-server vs multi-server setups
- Included load balancers, web servers, application servers
- Designed database clusters (master-slave, master-master)
- Understood firewalls, HTTPS, SSL/TLS termination
- Planned for high availability and fault tolerance
- Implemented redundancy and failover strategies
- Monitored infrastructure with logging and health checks

# 📁 0x0A-configuration_management

- Automation with Puppet.
- Wrote declarative Puppet manifests
- Ensured idempotent configurations (apply once = same result)
- Managed packages (`package`), services (`service`), files (`file`)
- Enforced desired system state using Puppet DSL
- Implemented infrastructure as code (IaC) principles
- Applied Puppet modules for modular and reusable configurations

# 📁 0x0B-ssh

- Secure remote access with SSH.
- Generated SSH key pairs using `ssh-keygen` (RSA, ED25519)
- Copied public keys to remote servers with `ssh-copy-id`
- Secured SSH configurations in `/etc/ssh/sshd_config`
- Disabled root login and password authentication
- Used port forwarding (tunneling) with `-L`, `-R`, `-D`
- Created SSH config `~/.ssh/config` for aliases
- Used `scp` and `rsync` for secure file transfer

# 📁 0x0C-web_server

- Nginx web server configuration.
- Installed and configured Nginx
- Set up virtual hosts and server blocks
- Created custom error pages (`404`, `50x`)
- Added custom HTTP headers (`X-Served-By`)
- Implemented redirects with `301` and `302`
- Used location blocks for URL routing
- Handled static content and media files
- Configured reverse proxy and proxy pass
- Reloaded Nginx without downtime (`nginx -s reload`)

# 📁 0x0D-web_stack_debugging_0

- Debugging web server issues.
- Troubleshot port conflicts (port 80 vs 8080)
- Checked Nginx error logs (`/var/log/nginx/error.log`)
- Fixed "port already in use" errors
- Verified services were running (`systemctl status nginx`)
- Used `curl`, `telnet`, `netstat` for connectivity checks
- Identified misconfigurations in virtual hosts
- Debugged permission issues with file access

# 📁 0x0E-web_stack_debugging_1

- More debugging and process management.
- Killed zombie processes and stuck services
- Restarted services gracefully (`systemctl restart nginx`)
- Used `strace` for system call debugging
- Used `lsof` for open files and listening ports
- Identified and fixed misconfigurations
- Used `tail -f` for real-time log monitoring
- Debugged process dependencies and startup order

# 📁 0x0F-load_balancer

- HAProxy load balancer setup.
- Installed HAProxy
- Configured round-robin and leastconn load balancing
- Added health checks for backend servers
- Enabled stats page for monitoring (`/haproxy?stats`)
- Distributed traffic between web servers
- Implemented session persistence (stick-tables) if needed
- Used `check` directive for automatic health verification
- Reloaded HAProxy without downtime

---

## Summary

```bash
✅ Shell scripting & automation
✅ Process & signal management
✅ Networking (TCP/IP, DNS, DHCP)
✅ Web server (Nginx) configuration
✅ Load balancing (HAProxy)
✅ Configuration management (Puppet)
✅ SSH & secure access
✅ Web infrastructure design
✅ Debugging & troubleshooting
