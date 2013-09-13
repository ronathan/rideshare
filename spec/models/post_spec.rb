require 'spec_helper'

describe Post do
	context "model should respond to" do
		it { should respond_to(:title) }
		it { should respond_to(:body) }
		it { should respond_to(:price) }
		it { should respond_to(:image_url) }
		it { should respond_to(:depart_from) }
		it { should respond_to(:depart_to) }
		it { should respond_to(:departure_time) }
		it { should respond_to(:created_at) }
		it { should respond_to(:updated_at) }
	end

	context "FactoryGirl works" do
    it "has a valid factory" do
      FactoryGirl.create(:post).should be_valid
    end
  end

	context "model associations" do
		it { should belong_to(:city) }
		it { should belong_to(:user) }
	end

	context "model should have valid data" do
		before do
		  FactoryGirl.create(:post)
		end

		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:body) }
		it { should validate_presence_of(:price) }
		it { should validate_presence_of(:depart_from) }
		it { should validate_presence_of(:depart_to) }
		it { should validate_presence_of(:departure_time) }
	end
end
