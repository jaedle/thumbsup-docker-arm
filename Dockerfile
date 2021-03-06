# ------------------------------------------------
# Builder image
# ------------------------------------------------

FROM jaedle/thumbsup-arm:build as build

# Install thumbsup locally
WORKDIR /thumbsup
ARG PACKAGE_VERSION
RUN if [ -z "${PACKAGE_VERSION}" ]; then \
      echo "Please specify --build-arg PACKAGE_VERSION=<2.4.1>"; \
      exit 1; \
    fi;
RUN echo '{"name": "installer", "version": "1.0.0"}' > package.json
RUN npm install thumbsup@${PACKAGE_VERSION}

# ------------------------------------------------
# Runtime image
# ------------------------------------------------

FROM jaedle/thumbsup-arm:runtime

#ADD https://github.com/krallin/tini/releases/download/v0.18.0/tini-armhf /tini
#RUN chmod +x /tini
#ENTRYPOINT ["/tini", "--"]

# Thumbsup can be run as any user and needs write-access to HOME
ENV HOME /tmp

# Copy the thumbsup files to the new image
COPY --from=build /thumbsup /thumbsup
RUN ln -s /thumbsup/node_modules/.bin/thumbsup /usr/local/bin/thumbsup

# Default command, should be overridden during <docker run>
CMD ["thumbsup"]