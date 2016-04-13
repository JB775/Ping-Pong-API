require 'rails_helper'

RSpec.describe User, type: :model do
    
    describe "checking model" do
	    it "can retreive record from db" do
	      user = User.first
	    end
  	end

    describe "model test" do
	    it "is able to create a new user with a name and email" do
	      expect { User.create(:name => 'NewUser', :email => 'tester@google.com') }.to_not raise_error
	      newNewUser = User.create(:name => 'NewNewUser', :email => 'tester2@google.com')
	      expect(newNewUser.name).to eq('NewNewUser')
	      expect(newNewUser.email).to eq('tester2@google.com')
	    end
	end

end


