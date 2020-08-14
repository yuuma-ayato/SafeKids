class Reservation < ApplicationRecord
  before_validation do
    self.other_reason = nil unless reason == "その他"
  end

  validates :other_reason, length: { maximum: 255 }, presence: true, if: :otherreason?

  def otherreason?
    reason == "その他"
  end

    enum reason: { その他: 0, 仕事: 1, 疾病: 2 }
    enum status: { 仮予約: 0, 本予約: 1 }
end
