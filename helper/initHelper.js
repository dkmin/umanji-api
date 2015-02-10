// Generated by CoffeeScript 1.9.0
(function() {
  exports.initHapi = function(demon) {
    demon.connection({
      host: 'localhost',
      port: 8080
    });
    return console.log('LOG: initHapi');
  };

  exports.initHapiRouter = function(demon) {
    demon.route({
      method: 'GET',
      path: '/api/hello',
      handler: function(request, reply) {
        return reply('HELLO');
      }
    });
    return demon.route({
      method: 'GET',
      path: '/api/world',
      handler: function(request, reply) {
        return reply('WORLD');
      }
    });
  };

  exports.initExpress = function(demon) {
    return console.log('init express config');
  };

  exports.initExpressRouter = function(demon) {
    return console.log('init express router');
  };

}).call(this);

//# sourceMappingURL=initHelper.js.map
