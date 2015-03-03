# author : meinzug@me.com : 2015.02.27 07:29

# database
exports.TBL_USER      = "tbl_user"
exports.TBL_BUILDING  = "tbl_building"

# mysql, mariadb
exports.MYSQL_HOST                  = "localhost"
exports.MYSQL_PORT                  = 3306
exports.MYSQL_USER                  = "umanji"
exports.MYSQL_PASSWORD              = "18281828"
exports.MYSQL_DATABASE              = "master1"
exports.MYSQL_CONNECTION_LIMIT      = 20
exports.MYSQL_WAIT_FOR_CONNECTIONS  = false

# server
exports.SERVER_HOST       = "0.0.0.0"
exports.SERVER_PORT       = 8080
exports.SERVER_UUID       = uuid.v4()
exports.SERVER_BOOTUP_UTC = datefn(new Date(), "yyyy-mm-dd HH:MM:ss Z", true)
exports.SERVER_BOOTUP_LOC = datefn(new Date(), "yyyy-mm-dd HH:MM:ss Z", false)