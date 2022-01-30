FROM verdaccio/verdaccio:5

USER root

ENV NODE_ENV=production

RUN yarn && yarn add verdaccio-memory

COPY ./config.yaml /verdaccio/conf

USER verdaccio

CMD node -r ./.pnp.js $VERDACCIO_APPDIR/bin/verdaccio --config /verdaccio/conf/config.yaml --listen $VERDACCIO_PROTOCOL://0.0.0.0:$PORT
