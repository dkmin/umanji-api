// Generated by CoffeeScript 1.9.0
(function() {
  var del, get, getList, post, put;

  exports.loadIndex = function(app) {
    var indexList;
    indexList = [
      {
        method: "POST",
        path: "/buildings",
        handler: post
      }, {
        method: "GET",
        path: "/buildings",
        handler: getList
      }, {
        method: "GET",
        path: "/buildings/{id}",
        handler: get
      }, {
        method: "PUT",
        path: "/buildings/{id}",
        handler: put
      }, {
        method: "DELETE",
        path: "/buildings/{id}",
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

//# sourceMappingURL=building.js.map
