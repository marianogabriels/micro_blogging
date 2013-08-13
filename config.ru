ENV["RACK_ENV"] = "development"

require "./app"
require_relative "config/config"

run MicroBlogging
