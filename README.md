# Usage

## template
$ cat template.j2

```text
{{ title }}
 - {{ DATA1 }}
 - {{ DATA2 }}
```

## data
$ cat data.yml

```text
title: Matt
DATA1: Hello!
DATA2: Dogs are great!
```

## render
Then you can render this template by executing

```text
$ docker run --rm -v `pwd`:/data --workdir=/data -e PLUGIN_TEMPLATE=template.j2 -e PLUGIN_DATA=data.yml -e PLUGIN_OUTFILE=out g3dev/jinja2cli
$ cat out
My Title
```

## CI/CD
This also doubles as a [drone][drone] plugin.

Note: Using ENV variables instead of command line variables. Named parameters are more transferable and also allows this to be used in CI setups.

# Credits
- [docker-jinja2cli](https://hub.docker.com/r/vikingco/jinja2cli/)
- [jinja-2cli](https://github.com/mattrobenolt/jinja2-cli)

[drone]:https://docs.drone.io
