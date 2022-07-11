#Step 0: Choose base
FROM markhobson/maven-chrome

#Version numbers
ARG FIREFOX_VERSION=78.0.2
ARG CHROME_VERSION=83.0.4103.116
ARG CHROMDRIVER_VERSION=83.0.4103.39
ARG FIREFOXDRIVER_VERSION=0.26.0
ARG GH_USERNAME=chethanalb
ARG GH_TOKEN=test123

# 6- Define environmental variables required by Maven, like Maven_Home directory and where the maven repo is located
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
#Step 7: Copy our project
WORKDIR /usr/src/app

COPY . .

RUN mvn clean -s settings.xml -DskipTests=true install