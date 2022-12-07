##I asked ChatGPT to write a bash script to enumerate a Linux host!##

# Get the current user
current_user=$(whoami)
echo "Current user: $current_user"

# Get the hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# Get the Linux kernel version
kernel_version=$(uname -r)
echo "Linux kernel version: $kernel_version"

# Print the contents of the /etc/passwd file
echo "/etc/passwd:"
cat /etc/passwd

# Print the contents of the /etc/shadow file
echo "/etc/shadow:"
cat /etc/shadow

# List the kernel modules that are currently loaded
echo "Loaded kernel modules:"
lsmod

# List the system services that are currently running
echo "Running system services:"
systemctl

# List the processes that are currently running
echo "Running processes:"
ps aux

# List the network connections that are currently open
echo "Open network connections:"
netstat -an

# Check for sudo privileges
if sudo -n true 2>/dev/null; then
  echo "Current user has sudo privileges"
else
  echo "Current user does not have sudo privileges"
fi

# Check for files with the SUID bit set
echo "Files with the SUID bit set:"
find / -perm -u=s -type f 2>/dev/null

# Check for capabilities
echo "Capabilities:"
getcap -r / 2>/dev/null
