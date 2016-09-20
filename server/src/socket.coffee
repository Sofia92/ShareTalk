###
  soket 服务端
###

express = require 'express'
router = express.Router()
socket = require 'socket.io'

startup = (server) ->
  io = socket server
  # 每次出发即为创建一个连接
  io.on 'connection', (socket) ->
    # socket 为每次新建的连接对象
    console.log '建立了 WebSocket 连接'
    socket.on 'post', (data) ->
      console.log '前台发回了 post 请求'
      # 向前台发送 posted 响应
      io.emit 'posted', message: data.nickname + ' 说: ' + data.message
#    socket.on 'login', (data) ->
#      console.log '前台发回了 post login 请求'
#      console.log data if data
#
#      io.emit 'loginDetail', message: data.mail + ' ' + data.pass

module.exports = startup