FROM universalrobots/ursim_e-series:5.12.5

RUN apt-get update && apt-get install -y net-tools iputils-ping

WORKDIR /ursim
COPY ./net-statistics /sbin/net-statistics
RUN chmod +x /sbin/net-statistics
RUN mkdir /etc/network
COPY ./interfaces /etc/network/interfaces


