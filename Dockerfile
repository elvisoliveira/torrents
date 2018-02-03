FROM debian:latest
LABEL Author="Elvis Oliveira <elvis.olv@gmail.com>"

# Transmission Port:
EXPOSE 9091

# Enviroment Dependencies:
RUN apt-get update && \
    apt-get install transmission-daemon -y

# Add settings file.
ADD settings.json /transmission/settings.json

# Run
CMD transmission-daemon -f --config-dir /transmission
