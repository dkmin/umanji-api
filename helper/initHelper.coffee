# author : meinzug@me.com : 2015.02.11 02:06



# init hapi config
exports.initHapi = (demon) ->
  demon.connection
    host: 'localhost'
    port: 8080
  console.log 'LOG: initHapi'

# init hapi router
exports.initHapiRouter = (demon) ->
  demon.route
    method: 'GET'
    path: '/api/hello'
    handler: (request, reply) -> reply 'HELLO'

  demon.route
    method: 'GET'
    path: '/api/world'
    handler: (request, reply) -> reply 'WORLD'

# init express config
exports.initExpress = (demon) ->
  console.log 'init express config'

# init express router
exports.initExpressRouter = (demon) ->
  console.log 'init express router'