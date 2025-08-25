FROM nvidia/cuda:12.1.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive \
    PY=3.11 \
    VENV_PATH=/app/.venv

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        software-properties-common curl ca-certificates gnupg poppler-utils \
        git nano vim lsof && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        python${PY} python${PY}-dev python${PY}-venv python3-distutils && \
    ln -sf /usr/bin/python${PY} /usr/local/bin/python && \
    python${PY} -m ensurepip && \
    python${PY} -m pip install --upgrade --no-cache-dir pip setuptools wheel

WORKDIR /app
COPY . .

RUN python -m venv ${VENV_PATH} && \
    ${VENV_PATH}/bin/pip install --upgrade pip jupyterlab && \
    echo "source ${VENV_PATH}/bin/activate" >> /root/.bashrc

CMD ["/bin/bash"]

