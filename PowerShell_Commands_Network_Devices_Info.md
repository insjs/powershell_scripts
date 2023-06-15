To list all the devices on the network with details about each device, you can use the following PowerShell command:

```powershell
$devices = Get-WmiObject -Class Win32_PnPEntity | Where-Object {$_.ConfigManagerErrorCode -eq 0}
$devices | Select-Object Name, Description, DeviceID, Manufacturer, Status
```
This command retrieves all the devices on the network using the Get-WmiObject cmdlet and the Win32_PnPEntity class. It filters the devices to exclude any with a ConfigManagerErrorCode other than 0, which typically indicates a functioning device.

The command then selects specific properties, including the device name, description, device ID, manufacturer, and status, using the Select-Object cmdlet. These properties provide details about each device on the network.

When you run this command in PowerShell, it will display a list of devices with their corresponding details, such as name, description, device ID, manufacturer, and status.