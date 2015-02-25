# author : meinzug@me.com : 2015.02.24 15:41

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

  pool = mysql.createPool(config)

  pool.getConnection((error, conn) ->
    qry = "select * from tbl_user"
    conn.query(qry, (err, res) ->
      if err then console.log "QRY ERROR: " + qry
      console.log res
    )
  )
