# Usage

## template
$ cat template.j2
{{ title }}
 - {{ DATA1 }} 
 - {{ DATA2 }} 

## data
$ cat data.yml
title: Matt
DATA1: Hello!
DATA2: Dogs are great!

## render
Then you can render this template by executing

$ docker run -v $(pwd):/data vikingco/jinja2cli template.j2 data.yml > out
$ cat out
My Title

# Credits
[docker-jinja2cli](https://hub.docker.com/r/vikingco/jinja2cli/)
[jinja-2cli](https://github.com/mattrobenolt/jinja2-cli)