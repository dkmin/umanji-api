// Generated by CoffeeScript 1.9.0
(function() {
  var hello;

  exports.loadIndex = function(app) {
    return app.route({
      method: "GET",
      path: "/hello",
      handler: function(req, reply) {
        return hello(req, reply);
      }
    });
  };

  hello = function(req, reply) {
    return reply("HELLO");
  };

}).call(this);

//# sourceMappingURL=hello.js.map
