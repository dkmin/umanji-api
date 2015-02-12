# author : meinzug@me.com : 2015.02.12 12:22

exports.loadIndex = (app) ->
  app.route
    method: "POST"
    path: "/users"
    handler: (req, reply) -> testJson(req, reply)

testJson = (req, reply) ->
  console.log email = req.payload.email
  console.log password = req.payload.password
  reply {"result" : "OK"}