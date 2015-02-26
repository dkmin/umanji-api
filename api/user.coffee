# author : meinzug@me.com : 2015.02.12 12:22

#load module
db    = require "../helper/mysqlHelper.coffee"

# index
exports.loadIndex = (app) ->
  indexList = [
    {method: "POST",    path: "/users",       handler: post}
    {method: "GET",     path: "/users",       handler: getList}
    {method: "GET",     path: "/users/{id}",  handler: get}
    {method: "PUT",     path: "/users/{id}",  handler: put}
    {method: "DELETE",  path: "/users/{id}",  handler: del}
  ]
  app.route indexList



# handler
post = (req, reply) ->
  reply {"result": "POST"}

getList = (req, reply) ->
  db.getRecords global.TBL_USER
  reply {"result": "GET LIST"}

get = (req, reply) ->
  reply {"result": "GET"}

put = (req, reply) ->
  reply {"result": "PUT"}

del = (req, reply) ->
  reply {"result": "DELETE"}
