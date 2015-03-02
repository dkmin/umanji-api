# author : meinzug@me.com : 2015.02.24 15:41

# load module
bluebird  = require "bluebird"
mysql     = require "mysql"
mysqlPool = null

# common operations
exports.initDbms = () ->
  config =
    host:               CONST.MYSQL_HOST
    port:               CONST.MYSQL_PORT
    user:               CONST.MYSQL_USER
    password:           CONST.MYSQL_PASSWORD
    database:           CONST.MYSQL_DATABASE
    connectionLimit:    CONST.MYSQL_CONNECTION_LIMIT
    waitForConnections: CONST.MYSQL_WAIT_FOR_CONNECTIONS
  mysqlPool = mysql.createPool(config)

#query = (sql, rows) ->
#  mysqlPool.getConnection((err, conn) ->
#    return conn.query(sql, (err, rows) ->
#      if err then conn.release(); console.log(err); throw err
#
#      conn.release()
#      console.log rows
#      return rows
#    )
#  )
#
#exports.getRecords = (table) ->
#  query("select * from #{table}", rows) ->
#    if(rows)
#      console.log rows

exports.getRecords = (table) ->
  promise = bluebird.defer()

  sql = "select * from #{table}"
  mysqlPool.getConnection((err, conn) ->
    conn.query(sql, (err, rows) ->
      if err
        conn.release()
        console.log(err)
        throw err

      conn.release()
      console.log rows
    )
  )

  promise.promise
