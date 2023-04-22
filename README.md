# OWASP Benchmark Docker Container

This project builds [OWASP Benchmark](https://owasp.org/www-project-benchmark/) as a Docker container and publishes it to the GitHub Container Registry every Sunday.

## Run

Start OWASP Benchmark with Docker.

```shell
docker run --rm -t -p 8443:8443 ghcr.io/kaakaww/owasp-benchmark:latest
```

Then, open it in your browser.

```shell
open https://localhost:8443/benchmark/
```
