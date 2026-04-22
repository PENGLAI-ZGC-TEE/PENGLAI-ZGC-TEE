# NEMU-TEE
Enable Penglai-TEE to run on NEMU.

## Usage

Update the Docker environment (recommended):

```bash
# Build image
make docker-build
# Run container
make docker-run
```

Operations inside the container are the same:

First, initialize your repository by running:

```bash
make init
```

Then, use the Makefile to complete tasks automatically.

```bash
# Compile
make -j8
# Run
make run
```
