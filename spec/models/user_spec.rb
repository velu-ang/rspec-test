require 'rails_helper'
require 'byebug'
RSpec.describe User, :type => :model do
  it "is valid with valid attributes" do
    expect(User.new).to be_valid
  end
  it "is not valid without a name" do 
    user = User.create!(phone: "")
    expect(user).to_not be_valid
  end
end