# author : meinzug@me.com : 2015.02.11 13:30

# index
exports.loadIndex = (app) ->
  app.route
    method: "GET"
    path: "/world"
    handler: (req, reply) -> world(req, reply)

# handler
world = (req, reply) ->
  reply "WORLD"