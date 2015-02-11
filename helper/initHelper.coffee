# author : meinzug@me.com : 2015.02.11 02:06

# init node global
exports.initNode = ->
  global.app =
    path : require ('app-root-path')
    host : 'localhost'
    port : 8080

# init hapi config
exports.initHapi = (demon) ->
  demon.connection
    host: app.host
    port: app.port

# init hapi router
exports.initHapiRouter = (demon) ->
  console.log 'app.path: ' + app.path
  console.log 'app.host: ' + app.host
  console.log 'app.port: ' + app.port
