# Terraform-Ansible-EC2

   STEPS TAKEN TO CREATE THIS APPLICATION.
A simple Nodejs application with Express server, an HTML and CSS file.

Build,tag and push image to ECR repository. #Create an ECR repository

Set up Github with playbook.yml and playbook-delete.yml files
   Playbook.yml provisions the webserver, a security group and pulls the docker image from ECR #run 'which python' to get the python version to use to write the 
   playbook
   Playbook-delete.yml is used to delete the resources provisioned when they are no longer needed

Use Terraform to provision infrastructure. #Jenkins Server
  Userdata Installs Jenkins, Ansible, Trivy and AWS CLI 
  Outputs Jenkins URL and password 

SSH into Jenkins server and grant it Sudo priviledge using this code:
echo "jenkins ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers #Access to install dependancies on the pipeline script

Copy the Jenskins server public IP:8080 to set up Jenkins or using the URL and password output in terraform.
Plugins used are:
   AWS Credentials
   Ansible
   Pipeline: Stage View
   Pipeline: REST API
   SSH Agent
   Environment Injector
   Groovy

Tools set up:
    Groovy
    Ansible #run 'which ansible' on the jenkins server. copy the path and save here

Set up credentials:
    Keypair as Username and private key #used an existing keypair
    AWS credentials
    AWS credentials set up as secret text
    Account ID and Region set up as secret text

Create pipelines on jenkins. configure with pipeline script. 
   The Jenkins Setup script checks out github and deploys the playbook.yml file
   The Jenkins Delete script checks out github and deploys the playboo-delete.yml file



