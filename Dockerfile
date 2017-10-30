FROM mongo:3.4

RUN mkdir -p /data/db
RUN mkdir -p /data/configdb

COPY mongod.conf /etc/mongod.conf

# add user and make sure her stuff is writable 
# whichever userid is given at runtime
RUN adduser --disabled-password --gid 0 --gecos "ROS user" rosuser
USER rosuser
RUN chown rosuser:root /home/rosuser && chmod 0775 /home/rosuser
ENV HOME /home/rosuser
	
CMD [ "mongod", "-f", "/etc/mongod.conf" ]

EXPOSE 27017