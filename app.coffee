# author : meinzug@me.com : 2015.02.06 11:51

# load module
hapi        = require "hapi"
hapiHelper  = require "./helper/hapiHelper.coffee"

# init hapi
app = new hapi.Server()
hapiHelper.initOptions(app)
hapiHelper.initRoutes(app, true)

# run hapi
app.start()

# start log
console.log "========================================"
console.log "Server started.."
console.log new Date().toString()
console.log app.info.uri
console.log "========================================"
