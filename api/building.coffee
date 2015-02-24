# author : meinzug@me.com : 2015.02.24 11:08

# index
exports.loadIndex = (app) ->
  indexList = [
    {method: "POST",    path: "/buildings",       handler: postBuilding}
    {method: "GET",     path: "/buildings/{id}",  handler: getBuilding}
    {method: "PUT",     path: "/buildings/{id}",  handler: putBuilding}
    {method: "DELETE",  path: "/buildings/{id}",  handler: deleteBuilding}
  ]
  app.route indexList



# handler
postBuilding = (req, reply) ->
  reply {"result" : "POST BUILDING"}

getBuilding = (req, reply) ->
  reply {"result" : "GET BUILDING"}

putBuilding = (req, reply) ->
  reply {"result" : "PUT BUILDING"}

deleteBuilding = (req, reply) ->
  reply {"result" : "DELETE BUILDING"}
