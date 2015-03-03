# author : meinzug@me.com : 2015.02.11 13:30

# index
exports.loadIndex = (app) ->
  indexList = [
    { method: "POST",   path: "/hello",       handler: post }
    { method: "GET",    path: "/hello",       handler: getList }
    { method: "GET",    path: "/hello/{id}",  handler: get }
    { method: "PUT",    path: "/hello/{id}",  handler: put }
    { method: "DELETE", path: "/hello/{id}",  handler: del }
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

login = (req, reply) ->
  reply {"result": "LOGIN"}