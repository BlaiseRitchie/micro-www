FROM 195324580561.dkr.ecr.us-west-2.amazonaws.com/micro-www:flat.1

# this folder must be created in the base images
ADD . /root/micro-www/

#now run set up
RUN /bin/bash /root/micro-www/setup.sh

ENTRYPOINT ["/root/micro-www/boot.sh"]
