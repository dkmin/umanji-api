# author : meinzug@me.com : 2015.02.24 11:08

# index
exports.loadIndex = (app) ->
  indexList = [
    { method: "POST",   path: "/sites",       handler: post }
    { method: "GET",    path: "/sites",       handler: getList }
    { method: "GET",    path: "/sites/{id}",  handler: get }
    { method: "PUT",    path: "/sites/{id}",  handler: put }
    { method: "DELETE", path: "/sites/{id}",  handler: del }
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
