# author : meinzug@me.com : 2015.02.12 12:22

# index
exports.loadIndex = (app) ->
  indexList = [
    {method: "POST",    path: "/users",       handler: postUser}
    {method: "GET",     path: "/users/{id}",  handler: getUser}
    {method: "PUT",     path: "/users/{id}",  handler: putUser}
    {method: "DELETE",  path: "/users/{id}",  handler: deleteUser}
  ]
  app.route indexList



# handler
postUser = (req, reply) ->
  reply {"result" : "POST USER"}

getUser = (req, reply) ->
  reply {"result" : "GET USER"}

putUser = (req, reply) ->
  reply {"result" : "PUT USER"}

deleteUser = (req, reply) ->
  reply {"result" : "DELETE USER"}
