# Value Driven Testing

This repository contains a presentation meant to be shared across Molex/Koch that hopefully will
help illustrate the why's of automated software testing.

## Usage

With a built [OCI Docker image](#development), you can run this locally as you would any other OCI
image on your container runtime of choice.

Here's an example with [Docker Desktop](https://www.docker.com/products/docker-desktop/):

```bash
docker run --rm --publish-all --detach ${IMAGE_NAME}
```

You can see what port it is listening on with this command:

```bash
docker ps --filter id=${CONTAINER_SHA} --format "{{.Ports}}"
```

You can then make an HTTP connection to the randomly published port to access the presentation in
your web browser of choice.

## Development

This slide presentation is developed with the [reveal.js](https://revealjs.com/) slide presentation
framework. [index.html](./src/index.html) is the entrypoint for this presentation's source code.

[Vite](https://vitejs.dev/) is the build tooling used. By running `npm install` you will be able to
install the required build tooling, and then you use it to perform the following operations:

- `npm run dev` to run a live instance of the presentation locally that will re-render on local code
  changes.
- `npm run build` to build a bundled version of the presentation in the _./dist_ directory which can
  be run on a web server.

[Prettier](https://prettier.io/) is the code formatter of choice and all committed code should be
formatted with it. You can run `npm run format` to have Prettier clean up your code before
committing it.

Docker's [OCI build tooling](https://docs.docker.com/engine/reference/builder/) is utilized to
bundle this presentation into a runnable website. The build definition can be found in this
repository's [Dockerfile](./Dockerfile). You can build a new image by running `docker build .`.

[//]: # "TODO - Review Everything"
[//]: # "TODO - Play with styling "
[//]: # "TODO - Cut an MR"
[//]: # "TODO - Get Permission to Open Source"
