# I asked ChatGPT to write a powershell script to enumerate a system
# To use the script, you will need to have PowerShell installed on your system. You can check if you have PowerShell installed by opening a command prompt and typing powershell. If PowerShell is installed, you should see a PowerShell prompt, which looks like this:
# PS C:\>
# To run the script, you will need to copy it to a file with a .ps1 extension, such as enumerate_host.ps1. You can then run the script by opening a PowerShell prompt, navigating to the directory where the script is saved, and typing the following command:
# PS C:\> .\enumerate_host.ps1
# This will execute the script, and the output will be displayed on the screen. You can also run the script by right-clicking on the script file in Windows Explorer and selecting "Run with PowerShell" from the context menu.
# Note that you may need to adjust the execution policy in PowerShell in order to run scripts. By default, the execution policy in PowerShell is set to "Restricted", which means that scripts cannot be run. You can check the current execution policy by typing the following command at the PowerShell prompt:
# PS C:\> Get-ExecutionPolicy
# If the execution policy is set to "Restricted", you can change it to "Unrestricted" by typing the following command at the PowerShell prompt:
# PS C:\> Set-ExecutionPolicy Unrestricted
# This will allow you to run scripts, but it also presents a security risk because it allows any script to be run on your system. As such, you should only use this setting if you trust the scripts that you are running.
# Once you have set the execution policy to "Unrestricted", you should be able to run the script by following the steps outlined above.

# Enumerate hostname
$hostname = hostname

# Enumerate operating system
$os = Get-WmiObject -Class Win32_OperatingSystem

# Enumerate installed hotfixes
$hotfixes = Get-HotFix

# Enumerate installed software
$software = Get-WmiObject -Class Win32_Product

# Enumerate network adapters
$adapters = Get-WmiObject -Class Win32_NetworkAdapterConfiguration

# Enumerate users
$users = Get-WmiObject -Class Win32_UserAccount

# Enumerate installed services
$services = Get-WmiObject -Class Win32_Service

# Enumerate processor
$processor = Get-WmiObject -Class Win32_Processor

# Enumerate memory
$memory = Get-WmiObject -Class Win32_PhysicalMemory

# Output results in a list format
Write-Output "Hostname: $hostname" | Out-String | Format-Table
Write-Output "Operating System: $($os.Caption) $($os.OSArchitecture)" | Out-String | Format-Table
Write-Output "Hotfixes: $hotfixes" | Out-String | Format-Table
Write-Output "Software: $software" | Out-String | Format-Table
Write-Output "Network Adapters: $adapters" | Out-String | Format-Table
Write-Output "Users: $users" | Out-String | Format-Table
Write-Output "Services: $services" | Out-String | Format-Table
Write-Output "Processor: $($processor.Name) $($processor.MaxClockSpeed)MHz" | Out-String | Format-Table
Write-Output "Memory: $($memory.Capacity / 1GB)GB" | Out-String | Format-Table
