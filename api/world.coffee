# author : meinzug@me.com : 2015.02.11 13:30

exports.loadIndex = (app) ->
  app.route
    method: "GET"
    path: "/world"
    handler: (req, reply) -> world(req, reply)

world = (req, reply) ->
  reply "WORLD"