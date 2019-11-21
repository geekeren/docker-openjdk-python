FROM python:3.6-slim
RUN apt update -y
RUN apt install -y wget gnupg software-properties-common
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public |apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt update -y && apt install adoptopenjdk-8-hotspot -y
RUN java --version
CMD [ "java --version" ]
