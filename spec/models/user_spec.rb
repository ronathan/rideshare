require 'spec_helper'

describe User do

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }

  it "has a valid factory" do
  	FactoryGirl.create(:user).should be_valid
  end

  it "is invalid without a username" do
  	FactoryGirl.build(:user, username: nil).should_not be_valid
  end

  it "is invalid when an existing username exists" do
  	user1 = FactoryGirl.create(:user)
  	FactoryGirl.build(:user, username: user1.username).should_not be_valid
  end

  it "is invalid without an email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it "is invalid when a proper email is not entered" do
  	FactoryGirl.build(:user, email: "notavalidemail").should_not be_valid
  end

  it "is invalid without matching passwords" do
  	FactoryGirl.build(:user, password_confirmation: "boomboom").should_not be_valid
  end

  it "is invalid when length is less than 6" do
  	FactoryGirl.build(:user, password: "hello", password_confirmation: "hello").should_not be_valid
  end

  it "is invalid when length is greater than 20" do
  	FactoryGirl.build(:user, password: "hellohellohellohelloh", password_confirmation: "hellohellohellohelloh").should_not be_valid
  end

end
