
## Get Computer Manufacturer, Model, and Total Physical Memory

```powershell
# Retrieves computer manufacturer, model, and total physical memory
Get-WmiObject -Class Win32_ComputerSystem | Select-Object Manufacturer, Model, TotalPhysicalMemory
```
This command retrieves information about the computer's manufacturer, model, and total physical memory.

## Get Processor Name and Number of Cores

```powershell
# Retrieves processor name and number of cores
Get-WmiObject -Class Win32_Processor | Select-Object Name, NumberOfCores
```
This command retrieves the name of the processor installed in the computer and the number of cores it has.

## Get BIOS Manufacturer and Version

```powershell
# Retrieves BIOS manufacturer and version
Get-WmiObject -Class Win32_BIOS | Select-Object Manufacturer, SMBIOSBIOSVersion
```
This command retrieves the manufacturer and version information of the computer's BIOS (Basic Input/Output System).

## Get Baseboard Manufacturer and Product

```powershell
# Retrieves baseboard manufacturer and product
Get-WmiObject -Class Win32_BaseBoard | Select-Object Manufacturer, Product
```
This command retrieves the manufacturer and product information of the computer's baseboard.

## Get Total Memory Capacity

```powershell
# Retrieves total memory capacity
Get-WmiObject -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum | Select-Object @{Name="TotalMemory";Expression={"{0:N2} GB" -f ($_.Sum / 1GB)}}
```
This command calculates and retrieves the total memory capacity of the computer in gigabytes (GB).

## Get Logical Disk Information

```powershell
# Retrieves logical disk information including device ID, volume name, size, and free space
Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, VolumeName, @{Name="Size";Expression={"{0:N2} GB" -f ($_.Size / 1GB)}}, @{Name="FreeSpace";Expression={"{0:N2} GB" -f ($_.FreeSpace / 1GB)}}
```
This command retrieves information about logical disks in the computer, including their device ID, volume name, size, and free space in gigabytes (GB).