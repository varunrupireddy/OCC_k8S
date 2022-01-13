## assumptions:
##     -  we are using springboot to create the service
##     -  The applciation will display its name when tried to access on the app ports


FROM node:jdk8

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Copy app file
COPY service.jar /usr/src/app        ## the service.jar can be shop,cart,checkout,payment etc..

USER OCC
ENTRYPOINT ["java -jar", "/usr/src/app/service.jar"]



## create a docker image for each service and push it to the artifactory. 
