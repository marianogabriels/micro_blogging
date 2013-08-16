require_relative '../spec_helper'

describe User do
  before do
    @valid_user = User.new(username: 'valid', 
                                  email: 'valid@example.com', 
                                  password: 'FooFooFoo', 
                                  password_confirmation: 'FooFooFoo')
    @valid_user.save
  end

  let(:blank_user) { User.new }
    it { blank_user.respond_to?(:username).should be_true }
    it { blank_user.respond_to?(:email).should be_true }
    it { blank_user.respond_to?(:password_digest).should be_true }
    it { blank_user.respond_to?(:password_confirmation).should be_true }
    it { blank_user.respond_to?(:password).should be_true }

  describe "validations" do
    it { blank_user.should_not be_valid }

    describe "with same username" do
      @user = User.new(username: 'otro', 
                       email: 'foobar@example.com', 
                       password: 'FooFooFoo', 
                      password_confirmation: 'FooFooFoo')
      it { should_not be_valid } 
    end

    describe "without email" do
      user = User.new(username: 'anotherr',
                      email: '',
                      password: 'FooFooFoo',
                      password_confirmation: 'FooFooFoo')
      it { user.should_not be_valid }
    end
  end

  describe "with same email" do
    let(:same_email) { User.new(username: 'another', 
                                email: 'valid@example.com', 
                                password: 'FooFoo', 
                                password_confirmation: 'FooFooFoo') }
    it { should_not be_valid } 
  end
end
