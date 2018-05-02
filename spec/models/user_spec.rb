require 'rails_helper'

RSpec.describe User, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
 before { @user = FactoryBot.build(:user) }

 it { expect(@user).to respond_to(:email) }
 it { expect(@user).to respond_to(:name) }
 it { expect(@user).to respond_to(:password) }
 it { expect(@user).to respond_to(:password_confirmation) }
end
