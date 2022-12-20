<p align="center"><a href="https://github.com/crazy-max/docker-shodan" target="_blank"><img height="128" src="https://raw.githubusercontent.com/crazy-max/docker-shodan/master/.github/docker-shodan.jpg"></a></p>

<p align="center">
  <a href="https://hub.docker.com/r/crazymax/shodan/tags?page=1&ordering=last_updated"><img src="https://img.shields.io/github/v/tag/crazy-max/docker-shodan?label=version&style=flat-square" alt="Latest Version"></a>
  <a href="https://github.com/crazy-max/docker-shodan/actions?workflow=build"><img src="https://img.shields.io/github/actions/workflow/status/crazy-max/docker-shodan/build.yml?branch=master&label=build&logo=github&style=flat-square" alt="Build Status"></a>
  <a href="https://hub.docker.com/r/crazymax/shodan/"><img src="https://img.shields.io/docker/stars/crazymax/shodan.svg?style=flat-square&logo=docker" alt="Docker Stars"></a>
  <a href="https://hub.docker.com/r/crazymax/shodan/"><img src="https://img.shields.io/docker/pulls/crazymax/shodan.svg?style=flat-square&logo=docker" alt="Docker Pulls"></a>
  <br /><a href="https://github.com/sponsors/crazy-max"><img src="https://img.shields.io/badge/sponsor-crazy--max-181717.svg?logo=github&style=flat-square" alt="Become a sponsor"></a>
  <a href="https://www.paypal.me/crazyws"><img src="https://img.shields.io/badge/donate-paypal-00457c.svg?logo=paypal&style=flat-square" alt="Donate Paypal"></a>
</p>

## About

Docker image to run [Shodan CLI](https://github.com/achillean/shodan-python).<br />
If you are interested, [check out](https://hub.docker.com/r/crazymax/) my other Docker images!

💡 Want to be notified of new releases? Check out 🔔 [Diun (Docker Image Update Notifier)](https://github.com/crazy-max/diun) project!

___

* [Build locally](#build-locally)
* [Image](#image)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)

## Build locally

```shell
git clone https://github.com/crazy-max/docker-shodan.git
cd docker-shodan

# Build image and output to docker (default)
docker buildx bake

# Build multi-platform image
docker buildx bake image-all
```

## Image

| Registry                                                                                         | Image                           |
|--------------------------------------------------------------------------------------------------|---------------------------------|
| [Docker Hub](https://hub.docker.com/r/crazymax/shodan/)                                            | `crazymax/shodan`                 |
| [GitHub Container Registry](https://github.com/users/crazy-max/packages/container/package/shodan)  | `ghcr.io/crazy-max/shodan`        |

Following platforms for this image are available:

```
$ docker run --rm mplatform/mquery crazymax/shodan:latest
Image: crazymax/shodan:latest
 * Manifest List: Yes
 * Supported platforms:
   - linux/amd64
   - linux/arm/v6
   - linux/arm/v7
   - linux/arm64
   - linux/386
   - linux/ppc64le
   - linux/s390x
```

## Usage

The entrypoint is **shodan** itself:

```shell
docker run -t --rm crazymax/shodan:latest
```
```text
Usage: shodan [OPTIONS] COMMAND [ARGS]...

Options:
  -h, --help  Show this message and exit.

Commands:
  alert       Manage the network alerts for your account
  convert     Convert the given input data file into a different format.
  count       Returns the number of results for a search
  data        Bulk data access to Shodan
  domain      View all available information for a domain
  download    Download search results and save them in a compressed JSON...
  honeyscore  Check whether the IP is a honeypot or not.
  host        View all available information for an IP address
  info        Shows general information about your account
  init        Initialize the Shodan command-line
  myip        Print your external IP address
  org         Manage your organization's access to Shodan
  parse       Extract information out of compressed JSON files.
  radar       Real-Time Map of some results as Shodan finds them.
  scan        Scan an IP/ netblock using Shodan.
  search      Search the Shodan database
  stats       Provide summary information about a search query
  stream      Stream data in real-time.
  version     Print version of this tool.
```

Finally, initialize the Shodan CLI with [your API key](https://account.shodan.io/):

```shell
docker run -t --rm crazymax/shodan:latest init 01234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ
```
```text
Successfully initialized
```

Then you can start using it:

```shell
docker run -t --rm crazymax/shodan:latest search nginx
```

## Contributing

Want to contribute? Awesome! The most basic way to show your support is to star the project, or to raise issues. You
can also support this project by [**becoming a sponsor on GitHub**](https://github.com/sponsors/crazy-max) or by making
a [Paypal donation](https://www.paypal.me/crazyws) to ensure this journey continues indefinitely!

Thanks again for your support, it is much appreciated! :pray:

## License

MIT. See `LICENSE` for more details.
