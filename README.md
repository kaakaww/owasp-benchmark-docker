# OWASP Benchmark Docker Container

This project builds the [OWASP Benchmark](https://owasp.org/www-project-benchmark/) vulnerable web app as a container image and publishes it to Docker Hub every Sunday.

## What Is OWASP Benchmark?

> The OWASP Benchmark Project is a Java test suite designed to evaluate the accuracy, coverage, and speed of automated software vulnerability detection tools. Without the ability to measure these tools, it is difficult to understand their strengths and weaknesses, and compare them to each other.
> 
> -- https://owasp.org/www-project-benchmark/

## Running the OWASP Benchmark Container Image

Pull the latest version of the OWASP Benchmark container image

```shell
docker pull kaakaww/owasp-benchmark
```

Start OWASP Benchmark in the foreground. It may take a minute to start listening for connections.

```shell
docker run --name owasp-benchmark --rm -d -t -p 8443:8443 kaakaww/owasp-benchmark
```

Open [https://localhost:8443/benchmark/](https://localhost:8443/benchmark/) in your browser.

```shell
open https://localhost:8443/benchmark/
```

Shut OWASP Benchmark down.

```shell
docker stop owasp-benchmark
```

## Building the OWASP Benchmark Container Image

To build the OWASP Benchmark container image from the latest sources, first clone this repository and `cd` into it.

```bash
git clone https://github.com/kaakaww/owasp-benchmark-docker
cd owasp-benchmark-docker
```

Now build and run it. The service may take a minute to start listening on port 8443.

```shell
docker build . -t owasp-benchmark
docker run --rm -t -p 8443:8443 owasp-benchmark
```
