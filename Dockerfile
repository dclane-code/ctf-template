FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y socat python3

ENV USER=jack
RUN useradd -m $USER

WORKDIR /

COPY run.sh /run.sh
RUN chmod 755 /run.sh

COPY flag.txt /home/$USER/flag.txt
RUN chown root:root /home/$USER/flag.txt

COPY example.py /home/$USER/example.py
RUN chmod 755 /home/$USER/example.py

EXPOSE 1337

CMD ["/run.sh"]

