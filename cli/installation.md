---
layout: default
title: Installation
parent: Structurizr CLI
nav_order: 0
permalink: /cli/installation
---

# Installation

## Building from source

To build this repo from the sources (you'll need `git` and Java 17+ installed):

```
git clone https://github.com/structurizr/cli.git structurizr-cli
cd structurizr-cli
./gradlew
```

If successful, The `build/distributions` directory will contain a `.zip` file, with which you can:

1. Unzip into a directory of your choice.
2. Add the directory to your operating system's path (optional).
3. Use the `structurizr.sh` or `structurizr.bat` file as appropriate for your operating system.


## Local installation

1. Download the Structurizr CLI from [https://github.com/structurizr/cli/releases](https://github.com/structurizr/cli/releases), and unzip. You will need Java (version 17+) installed, and available to use from your command line.
2. Unzip into a directory of your choice.
3. Add the directory to your operating system's path (optional).
4. Use the `structurizr.sh` or `structurizr.bat` file as appropriate for your operating system.


## Docker

A prebuilt Docker image is available at [Docker Hub](https://hub.docker.com/r/structurizr/cli). To use it, for example:

```
docker pull structurizr/cli:latest
docker run -it --rm -v $PWD:/usr/local/structurizr structurizr/cli <parameters>
```

In this example, `$PWD` will mount the current local directory as the CLI working directory (`/usr/local/structurizr` in the Docker container).

## Other containers

Alternative containers are available via:

- [leopoldodonnell/structurizr-cli-docker](https://github.com/leopoldodonnell/structurizr-cli-docker)
- [aidmax/structurizr-cli-docker](https://github.com/aidmax/structurizr-cli-docker) (GitHub Actions compatible)
- [evilpilaf/structurizr-remotecontainer](https://github.com/evilpilaf/structurizr-remotecontainer)
- [sebastienfi/structurizr-cli-with-bonus](https://github.com/sebastienfi/structurizr-cli-with-bonus/) (GitHub Actions compatible; includes PlantUML)

## Package managers

### Homebrew (MacOS only)

The Structurizr CLI can be installed via [Homebrew](https://brew.sh) as follows:

```
brew install structurizr-cli
```

And to upgrade:

```
brew update
brew upgrade structurizr-cli
```

### Scoop (Windows only)

The Structurizr CLI can be installed via [Scoop](https://scoop.sh) as follows:

```
scoop bucket add extras
scoop install structurizr-cli
```

And to upgrade:

```
scoop update structurizr-cli
```

## GitHub Actions

Some pre-built GitHub Actions are available on the [GitHub Actions marketplace](https://github.com/marketplace?category=&type=actions&query=structurizr).

## GitLab

To export your diagrams to Mermaid format in gitlab-ci, add the `workspace.dsl` to your repo and add this job to your `.gitlab-ci.yml`:

```yml
job_name:
  stage: stage_name
  image:
    name: structurizr/cli
    entrypoint: [""]
  script:
    - /usr/local/structurizr-cli/structurizr.sh export --workspace workspace.dsl --format mermaid
  artifacts:
    paths:
      - "*.mmd"
```