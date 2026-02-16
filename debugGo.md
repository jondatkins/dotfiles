# Attaching to Go processes with delve

```bash
sudo sh -c 'echo 0 > /proc/sys/kernel/yama/ptrace_scope'
```

```bash
sudo nvim /etc/sysctl.d/10-ptrace.conf
# Add this line
kernel.yama.ptrace_scope = 0
# wq and run:
sudo sysctl --system
```
