FROM nginx:latest
RUN apt-get update && apt-get install -yq nano
ADD globemetrix.conf /etc/nginx/conf.d/
RUN service nginx restart  || :
