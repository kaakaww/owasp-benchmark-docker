FROM maven

RUN set -eux \
  && apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    git \
    ca-certificates \
  && update-ca-certificates

# Get OWASP Benchmark
RUN set -eux \
  && git clone https://github.com/OWASP-Benchmark/BenchmarkJava /BenchmarkJava \
  && chmod +x /BenchmarkJava/runRemoteAccessibleBenchmark.sh

#Compile Benchmark
RUN set -eux \
  && cd /BenchmarkJava \
  && mvn compile initialize clean package cargo:install

WORKDIR /BenchmarkJava
expose 8443

ENTRYPOINT ["/usr/bin/mvn"]
CMD ["cargo:run", "-Pdeploy", "-Drunenv=remote"]