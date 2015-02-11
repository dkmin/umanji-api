# author : meinzug@me.com : 2015.02.11 13:30

exports.world.index = (demon) ->
  demon.route
    method: 'GET'
    path: '/api/world'
    handler: (request, reply) -> reply 'WORLD'