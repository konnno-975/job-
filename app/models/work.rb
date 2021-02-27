class Work < ApplicationRecord
    validates :user_id, {presence: true}
    validates :start_time,{presence: true}
    validates :end_time, {presence: true}
    validates :money, {presence: true}
    validates :people, {presence: true}
end
