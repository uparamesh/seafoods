require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Category" do
  	it "start count should be zero" do
  		expect(Category.count).to eq 0
  	end

  	it "name should not be uniq" do
  		user = create(:category)
  		user1 = create(:category, title: "prawns")

  		expect(user.title).not_to eq user1.title
  	end
  end
end
