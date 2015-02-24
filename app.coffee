# author : meinzug@me.com : 2015.02.06 11:51

# load module
Hapi        = require "hapi"
HapiHelper  = require "./helper/hapiHelper.coffee"

# init hapi
app = new Hapi.Server()
HapiHelper.initOptions(app)
HapiHelper.initRoutes(app, true)

# run hapi
app.start()

# start log
console.log "========================================"
console.log "Server started.."
console.log new Date().toString()
console.log app.info.uri
console.log "========================================"
