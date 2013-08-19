require 'factory_girl'

FactoryGirl.define do
  factory :user do
    username               "example"
    email                  "example@example.com"
    password               "FooFooFoo"
    password_confirmation  "FooFooFoo"
  end
end
