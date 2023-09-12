FROM alpine
RUN apk add curl bash gcompat git go py3-pip python3 
RUN wget https://get.please.build -O please.sh
RUN bash please.sh
RUN mkdir /working
SHELL [ "bash" ]
WORKDIR /working
ENTRYPOINT [ "/root/.please/plz" ]