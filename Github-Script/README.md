# GitHub Collaborator List Script

This script interacts with the GitHub API to list users with read access to a specified repository.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/Inigojeevan/Devops.git

2. Navigate to the script directory

   ```bash
   cd Devops

3. Make the script excecutable

   ```bash
   chmod 777 user-list.sh

4. Run the script

   ```bash
   ./user-list.sh <repository-owner> <repository-name>
   
  Replace <repository-owner> and <repository-name> with the owner and name of the GitHub repository you want to check.

## Prerequisites

 * Ensure you have curl and jq installed on your system.
 * Set the username and token variables in the script with your GitHub credentials.
