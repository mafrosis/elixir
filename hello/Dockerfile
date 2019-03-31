FROM mafrosis/phoenix:1.4.2

WORKDIR /srv/app
ADD . /srv/app/

RUN mix deps.get && mix compile

RUN cd assets && npm install

CMD ["mix", "phx.server"]
