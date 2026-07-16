## 📁 Project Files

| File | Description |
|------|-------------|
| `0-what-is-my-pid` | Displays the PID of the current shell |
| `1-list_your_processes` | Lists all running processes with `ps aux` |
| `2-show_your_bash_pid` | Shows the PID of all bash processes using `pgrep` |
| `3-show_your_bash_pid_made_easy` | Simpler way to find bash PIDs |
| `4-to_infinity_and_beyond` | Runs an infinite loop with `sleep 2` |
| `5-dont_stop_me_now` | Traps SIGTERM and prints "I am invincible" |
| `5-kill_menow` | Sends SIGTERM to a process |
| `6-stop_me_if_you_can` | Traps SIGINT and SIGTERM gracefully |
| `67-kill_me_now_made_easy` | Easier version of killing processes |
| `7-highlander` | Traps signals and handles cleanup |
| `8-beheaded_process` | Kills a process using `kill -9` |
| `100-process_and_pid_file` | Creates and manages a PID file |
| `101-manage_my_process` | Manages a process with start/stop/restart |
| `102-zombie.c` | C program that creates a zombie process |


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
