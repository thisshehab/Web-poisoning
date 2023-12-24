FROM golang:latest

LABEL maintainer="shehabalhayee82@gmial.com"

ENV DEBIAN_FRONTEND=non-interactive

RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest \
    && go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

WORKDIR /app

COPY . .

RUN chmod +x ./command.sh

CMD []

ENTRYPOINT ["./command.sh"]
