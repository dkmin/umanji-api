# author : meinzug@me.com : 2015.02.11 13:30

# index
exports.loadIndex = (app) ->
  indexList = [
    {method: "POST",    path: "/hello",       handler: postHello}
    {method: "GET",     path: "/hello/{id}",  handler: getHello}
    {method: "PUT",     path: "/hello/{id}",  handler: putHello}
    {method: "DELETE",  path: "/hello/{id}",  handler: deleteHello}
  ]
  app.route indexList



# handler
postHello = (req, reply) ->
  reply {"result" : "POST HELLO"}

getHello = (req, reply) ->
  reply {"result" : "GET HELLO"}

putHello = (req, reply) ->
  reply {"result" : "PUT HELLO"}

deleteHello = (req, reply) ->
  reply {"result" : "DELETE HELLO"}
