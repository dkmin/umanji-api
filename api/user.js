// Generated by CoffeeScript 1.9.0
(function() {
  var del, get, getList, post, put;

  exports.loadIndex = function(app) {
    var indexList;
    indexList = [
      {
        method: "POST",
        path: "/users",
        handler: post
      }, {
        method: "GET",
        path: "/users",
        handler: getList
      }, {
        method: "GET",
        path: "/users/{id}",
        handler: get
      }, {
        method: "PUT",
        path: "/users/{id}",
        handler: put
      }, {
        method: "DELETE",
        path: "/users/{id}",
        handler: del
      }
    ];
    return app.route(indexList);
  };

  post = function(req, reply) {
    return reply({
      "result": "POST"
    });
  };

  getList = function(req, reply) {
    return reply({
      "result": "GET LIST"
    });
  };

  get = function(req, reply) {
    return reply({
      "result": "GET"
    });
  };

  put = function(req, reply) {
    return reply({
      "result": "PUT"
    });
  };

  del = function(req, reply) {
    return reply({
      "result": "DELETE"
    });
  };

}).call(this);

//# sourceMappingURL=user.js.map
