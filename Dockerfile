FROM verdaccio/verdaccio:5

USER root

ENV NODE_ENV=production
ENV VERDACCIO_PORT=$PORT

RUN yarn && yarn add verdaccio-memory

COPY ./config.yaml /verdaccio/conf

USER verdaccio
