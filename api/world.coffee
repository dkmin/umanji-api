# author : meinzug@me.com : 2015.02.11 13:30

# index
exports.loadIndex = (app) ->
  indexList = [
    {method: "POST",    path: "/world",       handler: postWorld}
    {method: "GET",     path: "/world/{id}",  handler: getWorld}
    {method: "PUT",     path: "/world/{id}",  handler: putWorld}
    {method: "DELETE",  path: "/world/{id}",  handler: deleteWorld}
  ]
  app.route indexList



# handler
postWorld = (req, reply) ->
  reply {"result": "POST WORLD OK"}

getWorld = (req, reply) ->
  reply {"result": "GET WORLD OK"}

putWorld = (req, reply) ->
  reply {"result": "PUT WORLD OK"}

deleteWorld = (req, reply) ->
  reply {"result": "DELETE WORLD OK"}
