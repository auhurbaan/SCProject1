## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](Diagrams/ELKStackVMDiagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook files may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.4   | Linux            |
| VM1      | DVWA Webserver | 10.1.0.5 |  Linux      |
| VM2      | DVWA Webserver | 10.1.0.6   |Linux       |
| VM3      | DVWA Webserver | 10.1.0.9    |Linux      |
| ELK      | ELK Stack Server | 10.2.0.4  |Linux      |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox and the ELK Virtuals machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

- Home IP Address of Andrew Hurba (220.235.xxx.xxx)

Machines within the network can only be accessed by the Jumpbox (10.1.0.4). From the Jumpbox only SSH port 22 can be used to access the other VMs.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes              | 220.235.xxx.xxx   |
|  ELK Stack        | Yes    | 220.235.xxx.xxx          |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because we can be assured that the installation will work in exactly the way it is intended. In addition this type of automation is scaleable.

The playbook implements the following tasks:
The [ELK Playbook](Ansible/ELKInstallPlaybook.yml) performs a number of tasks.

- The ELK server is initially defined within the Ansible Hosts File and this IP address is used to execute the following steps
- Docker.io is installed
- Python Package installer is installed
- PIP Docker module installed
- Virtual Memory increased and used
- ELK Container downloaded and launched on the ELK server and then set to start on reboot.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELK Container Running](Diagrams/ELKDockerRunning.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._