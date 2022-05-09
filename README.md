# data-lake-architecture
Full design of Data Lake Architecture

This set of folders has a complete architectural design of a data lake containing the online, batch and lambda layers.
The objective was to build a POC containing all the infrastructure so that a complete data lake can work using the following resources, where the environment setup process is responsible for Terraform that will trigger docker instances in different instances of AWS Amazon, the process after AWS instance creation continues with the creation of Dockers instances for each of the following systems below:

- Apache Kafka
- Apache Kafka Connect
- Apache Spark
- AWS-Glue
- Apache Hadoop

The AWS-Glue service was also created, which is responsible for the integration of different types of data for ETL integration, in addition to allowing the creation of a data catalog.


Architecture Design Data Lake
<img src="/data_lake_architecture.jpeg" alt="Data Lake Architecture Degign"/>

Terraform Commands
For each folder the commands to start the enviroment are:

terraform init
terraform validate
terraform play


Terraform main commands

init          Prepare your working directory for other commands
validate      Check whether the configuration is valid
plan          Show changes required by the current configuration
apply         Create or update infrastructure
destroy       Destroy previously-created infrastructure

Fill the credencials in -> terraform.tfvars