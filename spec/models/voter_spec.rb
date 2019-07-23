require 'rails_helper'

RSpec.describe Voter, type: :model do
  it "should belongs to user" do
    t = Voter.reflect_on_association(:user)
    expect(t.macro).to eq(:belongs_to)
  end
  it 'user should be presence' do
    user = User.create(
       email: 'test@example.com', 
      password: 'password123',
      password_confirmation: 'password123'
    )
    voter = Voter.create(user: user)
  end

  it 'give error on create voter without user' do
    expect {Voter.create!}.to  raise_error(ActiveRecord::RecordInvalid,"Validation failed: User can't be blank, User must exist")
  end
end
