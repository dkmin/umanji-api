# author : meinzug@me.com : 2015.02.11 13:30

exports.loadIndex = (app) ->
  app.route
    method: "GET"
    path: "/hello"
    handler: (req, reply) -> hello(req, reply)

hello = (req, reply) ->
  reply "HELLO"