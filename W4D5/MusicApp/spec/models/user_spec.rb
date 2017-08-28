require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) do
      user = User.new(email: "priya@gmail.com",
        password: 'password')
  end

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end


  describe 'class methods' do
    describe '#is_password?' do
      it 'should check if password is the correct password' do
        expect(user.is_password?("password")).to be true
      end

      it 'verifies a password is not correct' do
        expect(user.is_password?("wrong_password")).to be false
      end
    end

    describe '#reset_session_token!' do
      it 'should reset the current session token' do
             old_session_token = user.session_token
             user.reset_session_token!

             # Miniscule chance this will fail.
             expect(user.session_token).to_not eq(old_session_token)
      end

    end

    describe '::find_by_credentials' do
      before {user.save!}
      it 'should find the user by correct given credentials' do
        expect(User.find_by_credentials("priya@gmail.com", "password")).to eq (user)
      end

      it 'should raise an error for wrong user credentials' do
        expect(User.find_by_credentials("priya@ymail.com", "password")). to eq(nil)
      end
    end
  end
end
