require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    @order_address = FactoryBot.build(:order_address, user_id: @user.id, item_id: @item.id)
  end

  describe '購入情報の保存' do
    context '購入できるとき' do
      it 'すべての値が正しければ保存できること' do
        expect(@order_address).to be_valid
      end

      it 'buildが空でも保存できること' do
        @order_address.build = ''
        expect(@order_address).to be_valid
      end
    end

    context '購入できないとき' do
      it 'tokenが空だと保存できないこと' do
        @order_address.token = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
      it 'postal_codeが空だと保存できないこと' do
        @order_address.postal_code = ''
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Postal code can't be blank")
      end

      it 'postal_codeが不正な形だと保存できないこと' do
        @order_address.postal_code = '1111111'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Postal code is invalid')
      end

      it 'prefecture_idが1だと保存できないこと' do
        @order_address.prefecture_id = '1'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Prefecture must be other than 1')
      end

      it 'cityが空だと保存できないこと' do
        @order_address.city = ''
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("City can't be blank")
      end

      it 'streetが空だと保存できないこと' do
        @order_address.street = ''
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Street can't be blank")
      end

      it 'phonenumberが空だと保存できないこと' do
        @order_address.phonenumber = ''
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Phonenumber can't be blank")
      end

      it 'phonenumberが不正な形だと保存できないこと' do
        @order_address.phonenumber = '080-1234-5678'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Phonenumber is invalid')
      end
    end
  end
end
