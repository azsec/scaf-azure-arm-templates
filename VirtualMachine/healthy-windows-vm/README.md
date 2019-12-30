# Deploy a healthy Windows virtual machine for developer

This template allows you to deploy a virtual machine that has the following capabilities:
- A dedicated virtual network. You can specify whether you want to deploy the new VM into a new existing virtual network.
- [Azure AD Sign-In capability](https://azsec.azurewebsites.net/2019/12/23/azure-arm-template-for-vm-creation-with-aad-sign-in/)
- [Azure Bastion](https://docs.microsoft.com/en-us/azure/bastion/bastion-overview) service to avoid Internet exposure on your virtual machine 
- [Microsoft Antimalware solution for Windows](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/iaas-antimalware-windows)
- Visual Studio Code is installed.
- Disk is encrypted with [Azure Disk Encryption](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disk-encryption-overview) extension support.
- Log Analytics integration to allow virtual machine log to be sent to.

![diagram](https://azsec.azurewebsites.net/wp-content/uploads/2019/12/healthy-azure-vm.png)