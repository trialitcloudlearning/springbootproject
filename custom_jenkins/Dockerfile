FROM jenkins/jenkins:lts
LABEL maintainer="test@itcloudlearning.org"
USER root
RUN curl -sSL https://get.docker.com/ | sh
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=true
RUN jenkins-plugin-cli --plugins pipeline-maven credentials-binding docker-plugin docker-workflow maven-plugin blueocean
#RUN jenkins-plugin-cli --plugins nodejs credentials-binding docker-plugin docker-workflow blueocean
USER jenkins