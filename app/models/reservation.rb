class Reservation < ApplicationRecord
    enum reason: { 仕事: 0, 疾病: 1, その他: 2 }
    enum status: { 仮予約: 0, 本予約: 1 }
end
