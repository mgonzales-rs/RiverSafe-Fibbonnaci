# Leaving base at ubuntu
FROM ubuntu
RUN chmod 700 .
#Create container to store file in
RUN mkdir doc-conatiner 
# source then destination of container in docker if I have one
COPY . /functionfibonnaci/doc-conatiner
#when conatiner starts what is the executable
ENTRYPOINT ["/bin/bash", "/functionfibonnaci/doc-conatiner/functionfibonnaci.sh"]
#OVERCOME PERMISSION DEININED
#Build application
# Run make ./functionfibonnaci/doc-conatiner
#ephemeral- should be stateless-Use bound mount for source code then?