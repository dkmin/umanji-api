# author : meinzug@me.com : 2015.02.24 15:41

# load module
mysql = require "mysql"

exports.initDbms = () ->
  config =
    host:               "localhost"
    port:               3306
    user:               "umanji"
    password:           "18281828"
    database:           "master1"
    connectionLimit:    20
    waitForConnections: false
  global.mysqlPool = mysql.createPool(config)

exports.getRecords = (table) ->
  sql = "select * from #{table}"

  mysqlPool.getConnection((err, conn) ->
    conn.query(sql, (err, rows) ->
      if err
        conn.release()
        console.log(err)
        throw err

      console.log(rows)
      conn.release()
    )
  )