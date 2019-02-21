## How to build:

### Jenkins

If you need to configure Jenkins please follow this [tutorial](https://cloud.google.com/solutions/using-jenkins-for-distributed-builds-on-compute-engine)

When your Jenkins is configured please follow these steps:

1. Create new job using **pipeline** scheme.
2. Modify **Pipeline** section:
 - Set **Definition** to **Pipeline script**
 - Copy contents of Jenkinsfile to field **Script**
 - Replace `[project-id]` with id of your project in google cloud
 - Replace `[google-credentials-id]` with id of the credentials that you made with tutorial from google
3. Click Save button
4. Choose **Build now** from menu on the left

*If you have problem in building your application using docker you have to connect to your VM machine (google cloud platform menu -> Compute Engine -> VM instances), click on SSH -> Open in browser window in Connect column.
*test 
Once you're logged in type `sudo chmod 777 /var/run/docker.sock` in console.


### All images

```
make build
```

### Just one image

```
make build SERVICE=movies
```
