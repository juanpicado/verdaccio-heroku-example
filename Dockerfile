FROM verdaccio/verdaccio:5

USER root

ENV NODE_ENV=production

RUN yarn && yarn add verdaccio-memory

COPY ./config.yaml /verdaccio/conf

USER verdaccio
