require 'spec_helper'

describe City do
  context "model should respond to" do
  	it { should respond_to(:name) }
  	it { should respond_to(:country) }
  end

  context "FactoryGirl works" do
    it "has a valid factory" do
      FactoryGirl.create(:city).should be_valid
    end
  end

  context "model associations" do
  	it { should have_many(:posts) }
  end

  context "model should have valid data" do
  	before do
  		FactoryGirl.create(:city)
  	end
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:country) }
  end
end
