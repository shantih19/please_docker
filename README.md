# please_docker

Run [please](https://please.build) in Docker!

## Building

- ```docker build . -t please:latest``` to build directly
- ```plz run :please``` to build using please (_doesn't work with built please since docker inside docker is wacky af_)

## Usage

To pull the image:

```docker pull git.shantih19.xyz/shantih19/please:latest```

You can use one of the scripts in the [aliases](aliases) folder, or run it directly:

```docker run --rm -v "${PWD}:/working:rw" git.shantih19.xyz/shantih19/please (args)```