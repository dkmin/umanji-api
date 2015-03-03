# author : meinzug@me.com : 2015.02.06 11:51

# load module : KEEP a ORDER !!
global.hapiValidation = require "./helper/hapiValidation.coffee"
global.datefn         = require "dateformat"
global.uuid           = require "node-uuid"
global.CONST          = require "./helper/constant.coffee"
global.db             = require "./helper/mysqlHelper.coffee"
hapi                  = require "hapi"
hapiHelper            = require "./helper/hapiHelper.coffee"

# init helper
db.initDbms()

# init hapi
app = new hapi.Server()
hapiHelper.initOption(app)
hapiHelper.initPlugin(app)
hapiHelper.initRoute(app, true)

# run hapi
app.start()

# start log
console.log "==========================================="
console.log "Server started.."
console.log CONST.SERVER_BOOTUP_UTC
console.log CONST.SERVER_BOOTUP_LOC + "\n"
console.log "http://" + CONST.SERVER_HOST + ":" + CONST.SERVER_PORT
console.log "UUID: " + CONST.SERVER_UUID
console.log "AUTH: " + new Buffer(CONST.SERVER_SECRET || '').toString('base64')

console.log "==========================================="
