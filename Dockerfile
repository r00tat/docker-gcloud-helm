FROM paulwoelfel/debian-docker:latest



ENV HOME /root
WORKDIR /root

RUN \
	(echo "deb https://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list) && \
	(curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -) && \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
	curl \
	google-cloud-sdk \
	kubectl \
	wget \
	sudo \
	&& \
	rm -rf /var/lib/apt/lists/* && \
	# wget -q 'https://bootstrap.pypa.io/get-pip.py' -O get-pip.py && \
	# python get-pip.py && \
	# rm get-pip.py && \
	rm -rf /var/lib/apt/lists/* && \
	curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash

ENV PATH="${PATH}:/usr/lib/google-cloud-sdk/bin"
VOLUME ["/root/.config"]
CMD ["helm", "help"]
