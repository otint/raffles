# DBS raffles

This public repository is forked from the PROOF Raffles codebase and contains all necessary data to reproduce the raffles conducted by DBS.
All raffles are hence verifiable by anyone.

## Structure

The subdirectories contain the lists that we drew from, together with an `entropy` file that stores the random seed driving the raffles.
The entropy is derived from an upcoming block that was announced in advance, rendering us unable to manipulate the drawing.

## Reproducing raffles

You can either reproduce the raffles yourself on your local machine or view the output of our [workflow](https://github.com/otint/raffles/actions/workflows/raffle.yml).

### Install dependencies

```bash
go install github.com/divergencetech/ethier/ethier@v0.35.3
```

```on a mac so you can run ethier from anywhere
export PATH=$PATH:$(go env GOPATH)/bin
which ethier && echo GOOD
```

```then confirm, if not GOOD then something went wrong
which ethier && echo GOOD
```

### Run the script

```bash
./raffle.sh
```
