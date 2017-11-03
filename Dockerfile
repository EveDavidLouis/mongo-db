FROM mongo:3.4

COPY ./root/ /

RUN chown -R 1001:0 /opt/data \
	&& chmod -R ug+rwx /opt/data 

USER 1001

CMD ["mongod", "-f", "/etc/mongod.conf" ]

EXPOSE 27017