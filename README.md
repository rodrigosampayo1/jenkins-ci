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

Set up multibranch pipeline using git
- Credentials in Jenkins
- Filter branches by name
1. Create a new job or new item
2. Check BRANCH SOURCES:
    - Project repositoy -> git repo
    - creds
    - behaviors -> Discover branches, filter by name (with regular expression) -> regular expression .* (everything)
3. Check BUILD CONFIGURATION:
    - mode: by Jenkinsfile -> default
4. Add credentials -> it's a plugin to store and manage then centrally
5. Crendentials scope: Global (jenkins, jobs, node, items, all child items) or System (Jenkins and node only) or Project scope.
6. Credentials KInd: user and password, github app, ssh private key, etc.
7. Add username, password and ID (how to reference on pipeline)
8. Realize that on the new Project, credentials are showned. BUt system creds are not there, only globals or project credentials.
9. On Project, COnfiguration, add pipeline creds.
10. It will fails because it cant find a JenkinsFile

How to trigger Jenkins build automatically
- Push notifications, it means VCS, version control source, notifies Jenkins on a NEW COMMIT
- Polling for changes, it means Jenkins polls in regular intervalls, is there a new change?

1. Push Notifictions:
Need to configure Jenkins and VCS, to they can communicate each other
Install jenkins plugin depend of you VCS, configure Repository Server hostname and the Access Token or Credentials
Example:
    From github, go to Settings, go to WEBHOOK left pannel, ADD WEBHOOK.
    - Payload URL: use your Jenkins Server and At the end of this URL add /github-webhook/
    http://jenkinsserverrs.ddns.net:8080/github-webhook
    - Content type: a. application/json
                    b. application/x-www-from-urlencoded
    - Events: Select Pushes and PUll Requests
    - Need a public URL for Jenkins Server, not use localhost:8080