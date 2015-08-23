###
  第一层路由配置
###

express = require 'express'
router = express.Router()

index = require('./routes/index');
authFilter = require('./routes/auth');
login = require('./routes/login');
users = require('./routes/users');


# 开发时暂时取消验证
router.use(authFilter);
router.use('/', index);
router.use('/', login);
router.use('/users', users);

module.exports = router;