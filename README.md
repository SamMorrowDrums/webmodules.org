WebModules.org
==============

WebModules.org - Micro API &amp; Web Service Experiment

- Small/Medium-size web services that can be chained dynamically
- API must be flexible

Concept
=======

Request a chain of services:

- combine image and watermark
- gzip output

    http.post('webmodules.org/api/+watermark+gzip', base64 encoded watermark)

Will return: `webmodules.org/temp/cdjahsflkh23fasucucu0cudsfu0sfkclkd`

Then post image to the temp url, and get combined image returned. Link will expire after 24 hours of disuse.


Possible Services
=================

- Recogniser -> takes image, returns JSON wordlist
- WikiLookup -> takes JSON wordlist, returns snippets from wikipedia
- Learner(CostFunction) -> takes x, y list (setup), receives x, returns y, receives new x,y adds to learning set


The basic idea is to find ways to provide dynamic apis to web-service, and to support the chaining of those in certain instances.

The goal is to encourage lots of developers and web-hosts to create services and add access to this service to build a community led version of distributed apps...

- Do you need to implement web-services just for your own site?
- Ever considered making a single page app, that leverages external APIs rather than requiring a complex server?

Dev Environment
===============

- Install [Node.js](http://www.nodejs.org/)
- Install [Docker](docker.com) OR on OSX/Win [Boot2Docker](http://boot2docker.io/)
- Install [Fig](fig.sh)

Run npm install

The use fig-dev.yml to start a message queue in Docker, and fig.yml to run Node.js from docker too




