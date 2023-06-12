# jenkins
1. Download Jenkins image from docker hub, check the Jenkins versions, we will use 2.219    
- docker pull jenkins/jenkins
2. Expose ports
- 8080, by default runs on that port
- 50000, its for master-slave comm
3. Options:
-v -> to create a volumen
-d -> to run container in detach, so, Jenkins will run in background
4. FUll command
docker run -p 50000:50000 -p 8080:8080 -v /jenkins_home/:/var/jenkins_home/ jenkins/jenkins:latest