require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    context '正常形' do
      it '正しく項目を入力したら登録できる' do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
    end

    context '異常形' do
      it 'nicknameが空では登録できない' do
        user = FactoryBot.build(:user, nickname: '')
        user.valid?
        expect(user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do
        user = FactoryBot.build(:user, nickname: '')
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
    end
  end
end
