require_relative '../spec_helper'

describe User do
  before do
    #@valid_sample_user = User(username: 'valid', email: 'valid@example.com')
    #@valid_sample_user.save
  end

  let(:blank_user) { User.new }
  it { blank_user.respond_to?(:username).should be_true }
  #describe "sin atributos" do
  #  blank_user = User.new
  #  it { blank_user.should be_invalid }
  #end

  #describe "with same username" do
  #  invalid_user = User.(username: 'valid', email: 'foobar@example.com')
  #  it { invalid_user.should be_invalid } 
  #end
  #
  #describe "with same email" do
  #  same_email = User.(username: 'another', email: 'valid@example.com')
  #  it { same_email.should be_invalid } 
  #end
end
