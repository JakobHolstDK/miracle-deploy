#!/bin/bash

# Create the root directory
mkdir my_terraform_module
cd my_terraform_module

# Create root module files
touch main.tf variables.tf outputs.tf providers.tf

# Create optional files
touch terraform.tfvars

# Create modules directory and submodules
mkdir modules
cd modules

# Create submodule1
mkdir submodule1
cd submodule1
touch main.tf variables.tf outputs.tf
cd ..

# Create submodule2
mkdir submodule2
cd submodule2
touch main.tf variables.tf outputs.tf
cd ..

# Add data directory
mkdir ../data
cd ../data

# Create data resource file
touch data_resource1.tf

# Return to the root directory
cd ../../

echo "Terraform module directory structure created successfully."

