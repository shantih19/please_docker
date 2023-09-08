FROM alpine
RUN apk add curl bash git
RUN wget https://get.please.build -O please.sh
RUN bash please.sh
RUN mkdir /working
SHELL [ "bash" ]
WORKDIR /working
ENTRYPOINT [ "/root/.please/plz" ]