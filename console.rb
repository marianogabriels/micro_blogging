require 'pry'
require './app'

user = User.new(
            username:               'Foobarfoo',
            email:                  'FooBarfoo@gmail.com',
            password:               'FooPassword',
            password_confirmation:  'FooPassword')
user.save

user2 = User.new(
            username:               'Foobarfoo',
            email:                  'FooBarfoo@gmail.com',
            password:               'FooPassword',
            password_confirmation:  'FooPassword')


binding.pry
system("rake db:reset:dev")
