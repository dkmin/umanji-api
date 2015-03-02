# author : meinzug@me.com : 2015.02.11 02:06

# init hapi config
exports.initOptions = (app) ->
  app.connection
    host   : "0.0.0.0"
    port   : 8080
    routes : {cors : true}

  global.appEnv =
    path    : require "app-root-path"
    apiPath : require("app-root-path") + "/api"


# init hapi routing index
exports.initRoutes = (app, isAutoLoad) ->
  fs        = require "fs"
  path      = require "path"
  apiFiles  = fs.readdirSync appEnv.apiPath

  # automatic routing
  if(isAutoLoad)
    for file in apiFiles then do (file) ->
      if path.extname(file) == ".coffee"
        filePath = global.appEnv.apiPath + "/" + file
        (require filePath).loadIndex app
  # manual routing
  else
    require(appEnv.apiPath + "/hello.coffee").loadIndex app
    require(appEnv.apiPath + "/world.coffee").loadIndex app
    require(appEnv.apiPath + "/user.coffee").loadIndex  app

