# SmartBrain backend

You can find the frontend repo of this application [here](https://github.com/DiogenesF/smartBrain-frontend)

## Tecnologies
- Node.js
- Postgres
- Redis
- Docker
- AWS

## Overview
This application is the banckend of an application that handles user authentication and detect faces in an image that the user can upload. Every user has a profile that can be updated. The user image is stored in a bucket in AWS S3 and the link to that image in stored in a postgres database along with all the user information. The application also has the record of how many images the user have uploaded in the face detector, this number is sent to an AWS Lambda function to return an emoji to the user. You can check [the code used to set up the bucket in AWS S3 using serverless here](https://github.com/DiogenesF/smartBrain-aws-s3). And the code to make the simple [lambda function returning an emoji to the user here](https://github.com/DiogenesF/smartBrain-lambda-badges).
I'm making use of Redis in this app to cache the JWT token of the user.
The application is making use of docker compose to set up 3 different images (Postgres, redis and node) and connect them in the container.
The container is being hosted by an instance of AWS EC2 and the frontend of this app is making use of this deployed container to access the backend.
And finally


## If you want to run this locally, make sure you have docker installed and running in your computer
Clone the repo and in the root folder you can run:

```docker-compose up --build```

After that the application will be running on ```localhost:3000``` if fyou have docker or ```192.168.99.100:3000 ``` if you have docker toolbox.
