require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should be valid with a password' do
      user = User.new password: 'password', password_confirmation: 'password'
      expect(user).to be_valid # valid?
    end

    it 'should not be valid without a password' do
      user = User.new
      expect(user).not_to be_valid
    end
  end

  describe 'assocations' do
    it 'has followers' do
      user = User.new
      expect(user.followers).to be_empty
      expect(user).to respond_to :followers
    end

    it 'has likes'
  end

  describe 'attributes' do
    it 'should have a #first_name' do
      user = User.new first_name: 'adam'
      expect(user.first_name).to eq 'adam'
    end

    it 'should have a #last_name' do
      user = User.new last_name: 'adams'
      expect(user.last_name).to eq 'adams'
    end
  end
end
