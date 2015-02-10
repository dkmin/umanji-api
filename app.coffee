# Author : meinzug@me.com
# Date : 2015.02.06 11:51

# init node module
hapi = require 'hapi'

# init file loader
# init file router

# init local function
hello = require './api/hello.coffee'
world = require './api/world.coffee'

# load objects
demon = new hapi.Server()

demon.connection
  host: 'localhost'
  port: 8080

demon.route
  method: 'GET'
  path: '/hello'
  handler: (request, reply) -> reply 'Hello World!!'

demon.route
  method: 'GET'
  path: '/api/hello'
  handler: (request, reply) -> hello.hello(request, reply)

demon.route
  method: 'GET'
  path: '/api/world'
  handler: (request, reply) -> world.world(request, reply)

# run hapi
demon.start()
console.log 'server start..'
console.log demon.info.uri