# # add modules defined in other filters to this array:
dependencies = [
  "pingPongServices",
  "pingPongControllers"
]

# # set up the main app:
angular.module("pingPongApp", dependencies)

# set up dependencies as modules:
for dependency in dependencies
  angular.module(dependency, ["ngResource"])

