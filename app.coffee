# author : meinzug@me.com : 2015.02.06 11:51

# load module
hapi        = require "hapi"
initHelper  = require "./helper/initHelper.coffee"

# init app
initHelper.initApp()

# init hapi
demon = new hapi.Server()
initHelper.initHapi demon
initHelper.initHapiRouting demon

# run hapi
demon.start()

# start log
console.log "========================================"
console.log "umanji server started.."
console.log new Date().toString()
console.log demon.info.uri
console.log "========================================"