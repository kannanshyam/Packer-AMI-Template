## Packer-AMI-Template

Packer is an open source tool for creating identical machine images for multiple platforms from a single source configuration, that automates the creation of any type of machine images for multiple platforms in parallel.

### Pre-Requirements

- IAM user with administrator access to EC2.
- [Packer](https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_amd64.zip)
- Linux Operating system

### Installation

1. To install packer, run the following commands to download the package
```
$ wget https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_amd64.zip
$ unzip packer_1.7.8_linux_amd64.zip
$ mv packer /usr/bin/
```
2. After installing Packer, verify the installation is working by checking that the packer is available:
```
$ packer
```
3. To check software version run:
```
$ packer --version
```
### Usage

1. The environment vaiables has to be set in the vaiables section of the main build file : AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY

2. cd into the packer folder with the files from the cloned repository.

3. Run the following commands : 
 ```
packer init aws.pkr.hcl
packer validate aws.pkr.hcl
packer build aws.pkr.hcl
````

This will provision the AMI in you AWS account.

### Results
An AMI has been created using packer. Now, you can use the AMI to launch an EC2 instance.
