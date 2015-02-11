# author : meinzug@me.com : 2015.02.11 02:06

# init node global
exports.initApp = ->
  global.app =
    path        : require "app-root-path"
    host        : "localhost"
    port        : 8080
    serviceDir  : "service"

# init hapi config
exports.initHapi = (demon) ->
  demon.connection
    host: app.host
    port: app.port

# init hpai routing index
exports.initHapiRouting = (demon) ->
  fs            = require "fs"
  path          = require "path"
  servicePath   = app.path + "/" + app.serviceDir
  serviceFiles  = fs.readdirSync servicePath

  # walk hapi service index
  for file in serviceFiles then do (file) ->
    if path.extname(file) == ".coffee"
      filePath = servicePath + "/" + file
      (require filePath).loadIndex demon
