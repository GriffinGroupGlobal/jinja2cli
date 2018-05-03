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
$ docker run -v $(pwd):/data g3dev/jinja2cli template.j2 data.yml > out
$ cat out
My Title
```

# Credits
- [docker-jinja2cli](https://hub.docker.com/r/vikingco/jinja2cli/)
- [jinja-2cli](https://github.com/mattrobenolt/jinja2-cli)