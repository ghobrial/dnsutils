FROM ubuntu:18.04
RUN apt-get update && apt-get install -yq dnsutils && apt-get clean && rm -rf /var/lib/apt/lists

COPY bashrc /root/.bashrc
ENV HOME /root
ENV ENV $HOME/.bashrc

CMD ["/bin/bash"]
