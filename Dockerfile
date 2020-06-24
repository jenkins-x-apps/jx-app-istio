FROM centos:7

# kubectl
ENV KUBECTL_VERSION 1.18.4
RUN curl -LO  http://mirror.azure.cn/kubernetes/kubectl/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
  mv kubectl /usr/local/bin/kubectl && \
  chmod +x /usr/local/bin/kubectl

# istioctl
ENV ISTIO_VERSION 1.6.1
RUN cd /usr/local && \
    curl -LO https://github.com/istio/istio/releases/download/${ISTIO_VERSION}/istio-${ISTIO_VERSION}-linux-amd64.tar.gz && \
    tar xzf istio-${ISTIO_VERSION}-linux-amd64.tar.gz  && \
    mv istio-${ISTIO_VERSION} istio

ENV PATH $PATH:/usr/local/istio/bin