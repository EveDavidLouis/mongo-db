FROM mongo:3.4

COPY mongod.conf /etc/mongod.conf

RUN adduser --disabled-password --gid 0 --gecos "ROS user" david
USER david

CMD [ "mongod", "-f", "/etc/mongod.conf" ]

EXPOSE 27017