# author : meinzug@me.com : 2015.02.06 11:51

# load module
hapi        = require 'hapi'
initHelper  = require './helper/initHelper.coffee'

# init hapi
demon = new hapi.Server()
initHelper.initNode()
initHelper.initHapi demon
initHelper.initHapiRouter demon

# run hapi
demon.start()
console.log 'server start..'
console.log demon.info.uri