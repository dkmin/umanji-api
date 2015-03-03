# author : meinzug@me.com : 2015.02.11 13:30

# index
exports.loadIndex = (app) ->
  indexList = [
    { method: "POST",   path: "/world",       handler: post }
    { method: "GET",    path: "/world",       handler: getList }
    { method: "GET",    path: "/world/{id}",  handler: get }
    { method: "PUT",    path: "/world/{id}",  handler: put }
    { method: "DELETE", path: "/world/{id}",  handler: del }
  ]
  app.route indexList



# handler
post = (req, reply) ->
  reply {"result": "POST"}

getList = (req, reply) ->
  reply {"result": "GET LIST"}

get = (req, reply) ->
  reply {"result": "GET"}

put = (req, reply) ->
  reply {"result": "PUT"}

del = (req, reply) ->
  reply {"result": "DELETE"}
