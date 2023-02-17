#-----------Creation of ServiceAccount that the VM will use
module "VM-SA" {
  source = "./ServiceAccount"
  #------Create ServiceAccount:
  id-of-sa        = "vm-service-account"
  name-in-display = "vm-service-account"
  #------Attach Roles:
  project-id = "hussein-ghoraba"
  roles      = "roles/container.admin"
}

#-----------Creation of Private VM
module "vm-private" {
  source          = "./vm-instance"
  vm-name         = "instance-management"
  vm-type         = "e2-micro"
  zone-of-vm      = "us-east1-b"
  image-of-vm     = "ubuntu-os-cloud/ubuntu-2204-lts"
  tags-of-vm      = "private-instance"
  id-subnet-of-vm = module.management-subnet.id-of-subnet
  email-of-sa     = module.VM-SA.email
  scopes-of-sa    = ["cloud-platform"]
  vm-script       = file("user-data.sh")
}