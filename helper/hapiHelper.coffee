##### author : meinzug@me.com : 2015.02.11 02:06

##### load module
joi = require "joi"

#### init config
exports.initOption = (app) ->
  app.connection
    host  : CONST.SERVER_HOST
    port  : CONST.SERVER_PORT
    routes: {cors : true}

##### init plugin
exports.initPlugin = (app) ->
  plugins = [
    {register: require "hapi-auth-jwt"}
   #{register: pluginA, option: {}}
   #{register: pluginB, option: {}}
  ]
  app.register plugins, (err) ->
    app.auth.strategy "jwt", "jwt", true, config =
      key:          CONST.SERVER_SECRET_KEY
      validateFunc: isExistUser

##### init route
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

#### hapi config validation example
exports.validation =
    user_id:
      validate:
        params:
          id: joi.string().min(3).max(20)
    auth:
      auth: "token"

#### auth function
isExistUser = (decodedToken, callback) ->
  console.log "VALIDATE AUTH CALLED: foo: " + decodedToken.foo
  callback(null, true, {})