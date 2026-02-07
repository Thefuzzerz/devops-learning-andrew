# DevOps Learning Repository

## Phase One: Application Dockerization

Create a Web Application using a framework of your choice in a new folder called /apps. For now simply have this application display "Hello World!"

Run it locally on Port 3000

After the application is built, setup docker on your machine in any way you see fit.

Write a dockerfile in the root of the repository that builds a docker image with your application.

Run this docker image locally using docker.

Commit your application with the source code and docker file to this repository.

## Phase Two: Introduction to AWS

In AWS, Create and Configure an ECR (Elastic Container Registry) to hold published Images.

You should then be able to authenticate to AWS and push/pull the image from and to the remote ECR source

## Phase Three: Publish your Image with Github Actions

Using Github Actions, create a workflow that on a pull request merge to the main branch will build your docker image and publish it to your ECR in AWS. 

Helpful hints

* Github Actions will somehow need to get authentication and authorization to AWS to publish to the ECR - consider OIDC
* IAC (Infrastructure as Code) is not required for this, but will be helpful in future steps. There are many tools to do this

## Phase Four: Run Your Image On AWS

Using an AWS service of your choice, build and run your Web Application on AWS.

Provide a URL by which I can securely access this Web Application

* IAC is highlly recommended here

## Phase Five: Build an API

Build an API with the tool selection of your choice. This API should expose a secure endpoint called /hello and return "Hello World!"

You can go with either native AWS tools or non-native AWS tools ex.
* API Gateway with Lambda
* nodejs with Docker deployed with some compute servce

Ensure it is deployed in an automated manner

## Phase 6: Run Your API in AWS

Using an AWS service of your choice, build and run your API on AWS.

## Phase 7: Fetch Data From API

Update your Web Application such that the "Hello World!" being displayed is retrieved from your API endpoint.

## Phase 8: Build a Datastore

Using a datastore technology of your choice, create a datastore that holds "messages", with an expecation of messageID and message. Your first message should be "Hello World!"

See Phase 10 for additional requirements for datastore selection

## Phase 9: Consume This Data

Update your API so that when someone hits GET /hello it queries the database and returns "Hello World!"

## Phase 11: Update your database

Update your datastore and add a messageCategory to your message. Create a few messages with differen message categories

## Phase 10: Add a more complex endpoint

Update your Web Application and API such that A user would have the ability to see all the messages in a specific message category
