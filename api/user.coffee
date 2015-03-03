# author : meinzug@me.com : 2015.02.12 12:22

# index
exports.loadIndex = (app) ->
  indexList = [
    {method:"POST",   path:"/users",      handler:post}
    {method:"GET",    path:"/users",      handler:getList}
    {method:"GET",    path:"/users/{id}", handler:get,    config: hapiValidation.uuid}
    {method:"PUT",    path:"/users/{id}", handler:put}
    {method:"DELETE", path:"/users/{id}", handler:del}
  ]
  app.route indexList

# POST /users
post = (req, reply) ->
  reply {"result": "POST"}

# GET /users
getList = (req, reply) ->
  db.getRecords(CONST.TBL_USER)
  .then (rows) ->
    console.log "\nFULFILLED:\n" + JSON.stringify(rows)
    reply {"result": rows}
  .catch (error) ->
    console.log "\nREJECTED:\n" + error
    reply {"error": "error code here"}
  .finally ->
    console.log "\nFINAL:\n" + "final action message.."

# GET /users/{id}
get = (req, reply) ->
  userid = req.params.id
  console.log "user uuid : " + userid

  # function call
  db.getRecords(CONST.TBL_USER)

  .then (rows) ->
    console.log "\nFULFILLED:\n" + JSON.stringify(rows)
    reply {"result": rows}
  .catch (error) ->
    console.log "REJECTED : " + error
    reply {"error": "error code here"}
  .finally ->
    console.log "\nFINAL:\n" + "final action message.."

# PUT /users/{id}
put = (req, reply) ->
  reply {"result": "PUT"}

# DELETE /users/{id}
del = (req, reply) ->
  reply {"result": "DELETE"}