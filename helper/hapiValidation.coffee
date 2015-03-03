# author : meinzug@me.com : 2015.03.03 12:32

# load module
joi = require "joi"

# hapi config validation
exports.uuid =
  validate:
    params:
      uuid: joi.string().guid()
