// Generated by CoffeeScript 1.9.0
(function() {
  var world;

  exports.loadIndex = function(demon) {
    return demon.route({
      method: "GET",
      path: "/api/world",
      handler: function(request, reply) {
        return world(request, reply);
      }
    });
  };

  world = function(rquest, reply) {
    return reply("WORLD");
  };

}).call(this);

//# sourceMappingURL=world.js.map
