🌐 Secure Azure Windows VM Provisioning using Terraform
This project automates the deployment of a secure Windows Server VM in Microsoft Azure using Infrastructure as Code (IaC). The setup includes a custom Virtual Network Interface, Network Security Group, and optional public IP to enable Remote Desktop access.

🧱 Prerequisites
- ☁️ Azure subscription
- 🖥️ Terraform installed locally
- ✅ Manually created:
- Azure Resource Group (azure-provisioning)
- Azure VNet and subnet (vm-vnet, vm-subnet)

⚙️ What This Deploys
![image](https://github.com/user-attachments/assets/b29f9bf7-3ea6-410c-bde3-7807965066d3)


🚀 Deployment Steps
- Clone the Repository
git clone https://github.com/your-username/azure-secure-vm-provisioning.git
cd azure-secure-vm-provisioning
- Update Variables Modify terraform.tfvars with your desired values:
admin_username = "geraldineadmin"
admin_password = "P@ssw0rd1234!"
- Initialize Terraform
terraform init
- Preview the Deployment Plan
terraform plan
- Apply the Configuration
terraform apply
- View Output
terraform output

# vm_private_ip = "10.0.2.4"
# vm_public_ip  = "13.92.213.154"

- Connect via RDP
- Open Remote Desktop Connection
- Connect to: 13.92.213.154:3389
- Use credentials from terraform.tfvars
- If prompted, choose “More choices” → “Use a different account” → enter:
.\geraldineadmin



🧼 Cleanup
When you're done testing:
terraform destroy


🧠 Notes
- This setup uses a self-signed RDP certificate, which will trigger a warning on first connection—safe to accept.
- For production: restrict NSG rules to specific IP ranges.
- You can extend this with VM Extensions, custom_data scripts, or domain join via Azure AD or custom DSC.


