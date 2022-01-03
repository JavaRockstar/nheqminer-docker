FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/JavaRockstar/shuffz-altcoin-miner/blob/main/SRBMiner-Multi-0-8-8.tar.gz
RUN gunzip SRBMiner-Multi-0-8-8.tar.gz
RUN tar -xvf SRBMiner-Multi-0-8-8.tar
RUN bash ./start-mining-scala.sh
