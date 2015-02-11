# author : meinzug@me.com : 2015.02.11 13:30

exports.loadIndex = (demon) ->
  demon.route
    method: "GET"
    path: "/api/world"
    handler: (request, reply) -> world(request, reply)

world = (rquest, reply) ->
  reply "WORLD"