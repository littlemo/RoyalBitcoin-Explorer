FROM ubuntu:latest

# 定义构建时元数据
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL maintainer="moore@moorehy.com" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="RoyalBitcoin-Explorer" \
      org.label-schema.description="纯真比特币的区块链浏览器" \
      org.label-schema.url="https://hub.docker.com/r/littlemo/RoyalBitcoin-Explorer/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/NewEconomicTeam/RoyalBitcoin-Explorer" \
      org.label-schema.vendor="NewEconomicTeam" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# 替换为中科大软件源
RUN sed -i 's|archive.ubuntu.com|mirrors.ustc.edu.cn|g' /etc/apt/sources.list && \
    sed -i 's|security.ubuntu.com|mirrors.ustc.edu.cn|g' /etc/apt/sources.list
