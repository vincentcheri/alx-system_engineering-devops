
##  Process Handling – Quick Reference

```bash
#  List all running processes
ps aux

#  Find process by name (matches full command line)
pgrep -f "process_name"

#  SIGTERM – graceful stop (can be trapped)
kill <PID>

#  SIGINT – interrupt (like Ctrl+C)
kill -SIGINT <PID>

#  SIGKILL – force kill (cannot be trapped, last resort)
kill -9 <PID>

#  Kill all processes matching name (by full command line)
pkill -f "process_name"

#  Kill all processes with exact name
killall process_name

#  Special shell variables
echo $$   # PID of the current shell
echo $?   # Exit code of the last command
echo $!   # PID of the last background process
```

---

###  Example: Killing a background `ping`

```bash
$ ping 127.0.0.1 &
[1] 94

$ kill 94
[1]+  Terminated                 ping 127.0.0.1
```

---

###  Warning: `kill -9` Can Create Zombies

```bash
$ sudo apt update && sudo apt upgrade &
[1] 99

$ kill -9 99

$ ps aux | grep apt
root      99  0.0  0.0      0     0 pts/1    Z    19:43   0:00 [sudo] <defunct>
```

> Zombie processes are cleaned up when the parent exits or after a reboot.

---

###  `pkill -f` vs `killall`

| Command | Matches | Kills |
|---------|---------|-------|
| `pkill -f nginx` | Full command line | All processes containing "nginx" |
| `killall nginx` | Exact process name | Only processes named `nginx` |

---

###  Signal Summary

| Signal | Number | Trappable? |
|--------|--------|------------|
| `SIGTERM` | 15 |  Yes |
| `SIGINT` | 2 |  Yes |
| `SIGKILL` | 9 |  No |

---

**Process handling is essential for scripting, debugging, and server management.** 
