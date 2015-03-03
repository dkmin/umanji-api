# author : meinzug@me.com : 2015.02.11 02:06

# init config
exports.initOption = (app) ->
  app.connection
    host  : CONST.SERVER_HOST
    port  : CONST.SERVER_PORT
    routes: {cors : true}

# init plugin
exports.initPlugin = (app) ->
  plugins = [
    { register: require("hapi-auth-jwt"), option: {""} }
   #{ register: pluginA, option: {"blabla"} }
   #{ register: pluginB, option: {"blabla"} }
   #{ register: pluginC, option: {"blabla"} }
  ]
  app.register plugins, (error) ->
    app.auth.strategy( "token", "jwt", key: CONST.SERVER_SECRET )
#   app.auth.strategy( "token", "jwt", {key: CONST.SERVER_SECRET, validationFunc: validateFx} )

validateFx = (decodedToken, callback) ->
  console.log error
  callback(error, false, credentials)

# init route
exports.initRoute = (app, isAutomaticRouting) ->
  fs        = require "fs"
  path      = require "path"
  apiFiles  = fs.readdirSync CONST.API_PATH

  if(isAutomaticRouting)
    for file in apiFiles then do (file) ->
      if path.extname(file) == ".coffee"
        filePath = CONST.API_PATH + "/" + file
        (require filePath).loadIndex app
  else
    require(CONST.API_PATH + "/helloWorld.coffee").loadIndex app
    require(CONST.API_PATH + "/user.coffee"      ).loadIndex app
    require(CONST.API_PATH + "/building.coffee"  ).loadIndex app
