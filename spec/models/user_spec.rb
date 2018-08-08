require "rails_helper"

RSpec.describe User, :type => :model do
  describe "#calculate" do
  	before(:context) do
	    @user = User.new
	  end

   #  it "sum of two numbers" do
   #    sum = @user.add(2,4)
   #    expect(sum).to eq(6)
   #  end

   #  it "substraction of two numbers" do
   #  	sub = @user.sub(2,6)
   #  	expect(sub).to eq(-4)
  	# end
  end

  describe "user" do
  	it "should check for user count" do
  		expect(User.count).to eq 0
  	end

  	it "has one after adding one" do
	    user1 = create(:user)
	    expect(User.count).to eq 1

	    user2 = create(:user, email: "test@gmail.com")
	    expect(User.count).to eq 2
	    expect(user2.email).not_to eq user1.email
	  end
	end
end