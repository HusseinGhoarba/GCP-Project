# GCP-Project
## A brief about the project:
**Project of `dockerization` a python application and `deploy` it into a `private cluster` "The Project include the setup and creation of the `infrastructure` till running the application in the cluster through a private VM"**

###                ______________________________________________________________________________________________


> ## Follow the next steps to run this project:

## Pre-Requests:

**Follow the steps inside each link from the following to finish the pre-requests:**

> 1- GCP-Project 
```
https://cloud.google.com/resource-manager/docs/creating-managing-projects 
```
> 2- gcloud sdk on your local machine 
```
https://cloud.google.com/sdk/docs/install
```
> 3- Docker on your local machine and configured with cloud SDK 
```
https://cloud.google.com/container-registry/docs/advanced-authentication
```
> 4- Terraform setup on you local machine
```
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 
```
> 5- install git on your local machine
```
https://github.com/git-guides/install-git
```
### --------------------------------------------------
## 1/Creating the infrastructure of the project on GCP:

> 1- In a new directory use the next command in the bash shell to download the files from this repo
```
git clone git@github.com:HusseinGhoarba/GCP-Project.git
```
> 2- Open file `terraform-files` and edit on files `terraform.tfvars` values of : 
	
	2-1- `user-project-id` --> add  `<your-project-id>`
	
	2-2- `user-region`     --> add  `<your-prefered-region>`
	
	2-3- `user-zone`       --> add  `<your-prefered-zone>`
	
     Open file `user-data.sh` and edit the value of the zone inside the line `no.25` with your `<your-prefered-zone>`

> 3- run the following commands as follows:
```
terraform init
```
**screenshot from the command:**


<img src="images/terraform/01-init.png" width=400 >

```
terraform plan
```
**screenshot from the command:**

<img src="images/terraform/02-terraform plan.png" width=400 >

```
terraform apply
```
**screenshot from the command:**

<img src="images/terraform/03-apply.png" width=400 >

<img src="images/terraform/04-yes-for-applying.png" width=400 >


### --------------------------------------------------
### Project Contributers:
|![Hussein Ghoraba](images/hussein.jpg)|
|:-----------------:|
|[Hussein Ghoraba](https://github.com/HusseinGhoarba)|

