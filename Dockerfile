FROM mongo:3.4

RUN mkdir -p /data/db

COPY mongod.conf /etc/mongod.conf
	
CMD [ "mongod", "-f", "/etc/mongod.conf" ]

EXPOSE 27017