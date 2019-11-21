FROM python:3.6-slim
RUN apt update -y && apt install -y wget gnupg software-properties-common && \
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public |apt-key add - && \
    add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ && \
    mkdir -p /usr/share/man/man1 && apt update -y && apt install adoptopenjdk-8-hotspot -y && \
    apt remove -y wget gnupg software-properties-common
CMD ["sh", "-c", "java -version && python --version" ]