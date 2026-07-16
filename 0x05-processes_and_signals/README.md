##  Process Handling – Quick Reference

```bash
#  List running processes and by username or Uid
ps aux

#  Find process by name
pgrep -f "process_name"

#  Send SIGTERM (graceful stop, can be trapped)
kill <PID>

#  Send SIGINT (interrupt, like Ctrl+C from keyboard)
kill -SIGINT <PID>

#  Force kill (SIGKILL – cannot be trapped)
kill -9 <PID>

#  Stop all processes by name (pkill doesnt accept <PID>)
pkill -f "process_name"

#  Kill all processes with exact name
killall process_name

#  Special variables
echo $$   # PID of the current shell
echo $?   # Exit code of the last command
echo $!   # last process that run in bg
```

### Notes:
- `SIGTERM` (15): polite termination, can be trapped
- `SIGINT` (2): interrupt, usually from keyboard (Ctrl+c or Ctrl+/)
- `SIGKILL` (9): instant kill, bypasses traps

**Process handling is essential for scripting, debugging, and server management.**
