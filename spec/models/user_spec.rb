require 'rails_helper'
RSpec.describe User, type: :model do
  it 'requires a first name' do
    # your code here
    @user = User.create(first_name:"")
  	@user.valid?
  	expect(@user.errors[:first_name].any?).to eq(true)
  end
  it 'requires a last name' do
    # your code here
    @user = User.create(last_name:"")
  	@user.valid?
  	expect(@user.errors[:last_name].any?).to eq(true)
  end
  it 'requires a password' do
    # your code here
    @user = User.create(password:"")
  	@user.valid?
  	expect(@user.errors[:password].any?).to eq(true)
  end
  it 'accepts properly formatted email addresses' do
    # your code here
    @user = User.create(email:"connor.d.ocallaghan@gmail.com")
  	@user.valid?
  	expect(@user.errors[:email].any?).to eq(false)
  end
  it 'rejects unproperly formatted email addresses' do
    # your code here
    @user = User.create(email:"")
  	@user.valid?
  	expect(@user.errors[:email].any?).to eq(true)
  end
end