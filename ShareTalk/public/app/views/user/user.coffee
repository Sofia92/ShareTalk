define [
  "angular"
  "views/user/user.list"
], (angular) ->
  angular.module "shareTalk.user", [
    "ngRoute"
    "shareTalk.user.list"]
  .factory '$users', ($resource) ->
    $resource '/users'