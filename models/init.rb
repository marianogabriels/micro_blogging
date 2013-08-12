require 'sequel'
DB = Sequel.sqlite
Sequel::Model.strict_param_setting = false
require_relative 'user'
require_relative 'post'
