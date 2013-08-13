require "./app"
require_relative "config/environments/development"
raise ENV[RACK_ENV]
run MicroBlogging
