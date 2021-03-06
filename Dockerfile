FROM python:3.5

RUN apt-get update && \
    apt-get install -y libssl-dev curl

RUN curl -L -o /usr/bin/solc https://github.com/ethereum/solidity/releases/download/v0.4.21/solc-static-linux && \
    chmod +x /usr/bin/solc
    
COPY ./requirements.txt /contracts/requirements.txt
COPY ./constraints.txt /contracts/constraints.txt

WORKDIR /contracts

RUN pip install -c constraints.txt -r requirements.txt

COPY . /contracts

RUN pip install .

ENTRYPOINT [ "tl-deploy"]
CMD ["test"]
