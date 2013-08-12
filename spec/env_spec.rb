require_relative 'spec_helper'
describe "app" do
  it { ENV['RACK_ENV'].should equal('test') }
end

