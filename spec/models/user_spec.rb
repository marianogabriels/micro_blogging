require_relative '../spec_helper'

describe User do

  let(:blank_user) { User.new }

  it { blank_user.respond_to?(:username).should be_true }
  it { blank_user.respond_to?(:email).should be_true }
  it { blank_user.respond_to?(:password_digest).should be_true }
  it { blank_user.respond_to?(:password_confirmation).should be_true }
  it { blank_user.respond_to?(:password).should be_true }
  it { blank_user.should_not be_valid }
  describe "validations" do
    before do
      @user = FactoryGirl.create(:user) 
    end

    describe "with same username" do
      @same_username = FactoryGirl.build(:user)
      @same_username.email = "another@example.com"
      it { should_not be_valid } 
    end

    describe "without email" do
      without_email = FactoryGirl.build(:user)
      without_email.email = ''
      it { without_email.should_not be_valid }
    end
  end

  #describe "with same email" do
  #  same_email = FactoryGirl.build(:user)
  #  same_email.username = 'isnottaken'
  #
#
  #  it { same_email.should_not be_valid } 
  #  it { same_email.errors.on[:mail].should be_true }
  #end
end
