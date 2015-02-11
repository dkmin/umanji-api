# author : meinzug@me.com : 2015.02.11 13:30

exports.hello.index = (demon) ->
  demon.route
    method: 'GET'
    path: '/api/hello'
    handler: (request, reply) -> reply 'HELLO'