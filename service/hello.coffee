# author : meinzug@me.com : 2015.02.11 13:30

exports.loadIndex = (demon) ->
  demon.route
    method: "GET"
    path: "/api/hello"
    handler: (request, reply) -> hello(request, reply)

hello = (request, reply) ->
  reply "HELLO"