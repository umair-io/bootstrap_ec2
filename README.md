# Creating a webserver on AWS using Bootstrap

 ### Create AWS account (free-tier)
 - Go to https://aws.amazon.com/free/ and follow instrucitons to sign up to AWS. (Debit/Credit card required)

### Create EC2 Instance (with Bootstrap script)
 1. Go to EC2 page in AWS.
	 https://console.aws.amazon.com/ec2/v2/home
 2. Click 'Launch Instance'
 3. Select 'Amazon Linux 2 AMI (HVM), SSD Volume Type' AMI
 4. Select 't2.micro' as Instance type and click 'Next: Configure Instance Details'
 5. While leaving rest of configurations default on the 'Configure Instance Details' page, scroll to the bottom of the page and expand 'Additional Details'.
 6. Copy the following snipet of code in the 'User data' text box:
`#!/bin/sh
yum install -y git
git clone https://github.com/umair-io/bootstrap_ec2.git
find /bootstrap_ec2/ -type f -iname "*.sh" -exec chmod +x {} \;
/bootstrap_ec2/main.sh`
 7. Keep click 'Next: ...' (bottom of the page) until you get to 'Configure Security Group' page.
 8. Select 'Create a **new** security group' and add a 'HTTP' rule (using the drop down list). Following that click 'Review and Launch'
 9. When prompted to Create a new key pair, select 'Create a new key pair' from the drop down list, type the key name of your choice and click 'Download Key Pair'.
 10. After saving the key pair, click 'Launch Instances'.
 
### Accessing your webserver
 1.  Go to EC2 page in AWS and click 'Running Instances' link. You should now see the EC2 instance you created earlier.
	 https://console.aws.amazon.com/ec2/v2/home
 2. Select the instance row and get instance's 'IPv4 Public IP' under the 'Description' tab.
 3. Now in your browser, go to http://[IPv4 Public IP]/
 4. You should now see your webserver. 

### Making changes to your webserver
 1. To make changes, fork this repo 'bootstrap_ec2'.
 2. Change to bootstrap script to point to your forked repo i.e. `git clone https://github.com/[YOUR_GIT_USERNAME]/bootstrap_ec2.git`
 3. Make and commit changes to .html files in `html_files` folder in the git repo e.g. change to index.html
 4. Create an EC2 instance with your new bootstrap script (now pointing to forked repo in your git)
