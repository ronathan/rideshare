require 'spec_helper'

describe User do

  context "model only should respond to" do
    it { should respond_to(:username) }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }
  end

  context "FactoryGirl works" do
    it "has a valid factory" do
      FactoryGirl.create(:user).should be_valid
    end
  end

  context "model associations" do
    it { should have_many(:posts) }
  end

  context "model should have valid data" do
    before do
      FactoryGirl.create(:user)
    end

    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }

    it { should_not allow_value("notavalidemail").for(:email) }
    it { should allow_value("ronaldvictorino@gmail.com").for(:email) }
    
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

end
