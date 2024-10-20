class Record < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
  belongs_to :doctor
end
