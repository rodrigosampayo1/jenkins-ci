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
5. CHeck the master password with "docker logs containerID"
6. On a browser, localhost:8080, and add master password, and install plugins: pipeline, git, Ant, Gradle, OWASP, Groovy, Stage view, LDAP, PAM Authorization, Mailer, etc
7. Create new a user admin and password admin


Types of Jenkins Projects
1. Freestyle -> simple, single tasks, e.g. run test
2. Pipeline -> whole delivery cycle, e.g. test | build | package | deploy for a single branch
3. Multibranch pipeline -> like pipeline for multi branh