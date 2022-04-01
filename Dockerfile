FROM python@sha256:ceec3171247ccc8202523d89de726323c7f1b364b5e36910a9aa8f93caeece79
RUN pip3 install \
    jupyterhub \
    jhsingle-native-proxy>=0.0.9
RUN python -c "import urllib.request; urllib.request.urlretrieve('https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64', '/bin/ttyd');" && chmod a+x /bin/ttyd
RUN apt-get update && \
	apt-get install sudo -y && \
	adduser --disabled-password --gecos '' user && \
	adduser user sudo && \
	echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
	apt-get autoremove -y && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
ENV HOME=/home/user
WORKDIR $HOME
USER user
EXPOSE 8888

ENTRYPOINT ["/bin/bash", "-c", "jhsingle-native-proxy --authtype none ttyd {--}port {port} bash"]
