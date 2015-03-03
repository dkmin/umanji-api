# author : meinzug@me.com : 2015.03.02 21:12

# load module


# response message helper
exports.response = (code, payload) ->
  result =
    timestamp:    (new Date()).getMilliseconds()
    server_uuid:  CONST.SERVER_UUID
    err_uuid:     uuid.v4
    resultCode: "{}"

  console.log result