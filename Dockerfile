FROM mongo:3.4

COPY mongod.conf /etc/mongod.conf

RUN groupadd -r anoikis \
  && useradd -r -g anoikis david
RUN mkdir -p /data/ \
  && chown -R david:anoikis /data

USER david

CMD ["mongod", "-f", "/etc/mongod.conf" ]

EXPOSE 27017

VOLUME ["/data/db"]