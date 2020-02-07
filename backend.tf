// backend.tf
// https://www.terraform.io/docs/backends/types/remote.html
terraform {
 backend "remote" {
 // If using Terraform Enterprise, enter the hostname provided by the course facilitator
 hostname = "app.terraform.io"
 organization = "andresouza"
 token = "3ilnlhv9hE20Ng.atlasv1.kAGXyma8v47VjlFIz9Ifsk6y29CTWDL4kFYYVB3TPQdmOnKBvZLJzx98NF5SzFi6LQo"
 workspaces {
 // create a workspace that corresponds to your workspace name
 name = "andresouzahpe"
 }
 }
}