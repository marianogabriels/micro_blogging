require_relative '../spec_helper'

describe User do
  before do
    @valid_sample_user = User.new(username: 'valid', email: 'valid@example.com')
    @valid_sample_user.save
  end

  let(:blank_user) { User.new }
  it { blank_user.respond_to?(:username).should be_true }
  it { blank_user.respond_to?(:email).should be_true }
  it { blank_user.respond_to?(:crypted_password).should be_true }

  describe "validations" do
    it { blank_user.should_not be_valid }

    describe "with same username" do
      invalid_user = User.new(username: 'valid', email: 'foobar@example.com')
      it { invalid_user.should_not be_valid } 
    end

  end

  #
  #describe "with same email" do
  #  same_email = User.(username: 'another', email: 'valid@example.com')
  #  it { same_email.should be_invalid } 
  #end
end
