FROM node:alpine
RUN apk add --no-cache curl bash && rm -rf /tmp/* /root/.npm
WORKDIR /app
RUN npm init -y
ARG HOODIE_VER
ENV HOODIE_VER ${HOODIE_VER:-latest}
RUN echo "install hoodie@$HOODIE_VER"
RUN npm install --save hoodie@$HOODIE_VER
EXPOSE 8080
CMD ["npm", "start", "--", "--address", "0.0.0.0"]




# ADD . /build
# WORKDIR /build
# RUN npm install
# WORKDIR /build/ng-src
# RUN npm install
# RUN node_modules/.bin/ng build --prod
# RUN mv dist/shopping-list ../public
# WORKDIR /build
# RUN rm -r ng-src
## ADD ng-src/dist/shopping-list/* /app/public/
## ADD index.html /app/public/index.html # just for debugging
#EXPOSE 8080
#CMD ["npm", "start", "--", "--address", "0.0.0.0"]
