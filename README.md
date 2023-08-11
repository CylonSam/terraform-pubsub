# Terraform Pub/Sub

Template for deploying GCP Pub/Sub through Terraform

## Setup

1. Create a project on GCP 
2. Enable Pub/Sub API on the project you just created
3. Create a service account with the role **pubsub.admin**
4. Create key for the service account and then download the key
5. Copy key content to a github action secret called **SERVICE_ACCOUNT_KEY**
6. Run action
