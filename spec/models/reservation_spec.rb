require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:reservation, daycare_to_use: '流山保育園')
  end
  context 'バリデーションテスト' do
    it 'dateが空ならバリデーションが通らない' do
      reservation = Reservation.new(date: '', reason: 0, daycare_to_use: "みさと保育園", status: 0)
      expect(reservation).not_to be_valid
    end
    it 'statusが空ならバリデーションが通らない' do
      reservation = Reservation.new(date: DateTime.tomorrow, reason: 0, daycare_to_use: "みさと保育園", status: "")
      expect(reservation).not_to be_valid
    end
    it 'dateとreasonとdaycare_to_useとstatusに内容が記載されていればバリデーションが通る' do
      reservation = Reservation.new(date: DateTime.tomorrow, reason: 0, daycare_to_use: "みさと保育園", status: 0)
      expect(reservation).to be_valid
    end
  end
end
