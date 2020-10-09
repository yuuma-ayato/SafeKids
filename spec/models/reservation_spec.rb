# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:reservation, daycare_to_use: '流山保育園')
  end
  context 'バリデーションテスト' do
    it 'dateが空ならバリデーションが通らない' do
      reservation = Reservation.new(date: '', reason: 0, daycare_to_use: 'みさと保育園', child_name: '美里')
      expect(reservation).not_to be_valid
    end
    it 'daycare_to_useが空ならバリデーションが通らない' do
      reservation = Reservation.new(date: DateTime.tomorrow, reason: 0, daycare_to_use: '', child_name: '美里')
      expect(reservation).not_to be_valid
    end
    it 'dateとreasonとdaycare_to_useとchild_nameに内容が記載されていればバリデーションが通る' do
      reservation = Reservation.new(date: DateTime.tomorrow, reason: 0, daycare_to_use: 'みさと保育園', child_name: '美里')
      expect(reservation).to be_valid
    end
  end
end
