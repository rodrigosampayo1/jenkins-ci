FROM jenkins/jenkins:latest


#-p 50000:50000 -p 8080:8080 -v /jenkins_home/:/var/jenkins_home/
EXPOSE 50000
EXPOSE 8080
VOLUME /jenkins_home/ /var/jenkins_home/
