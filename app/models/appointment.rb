class Appointment < ApplicationRecord
  belongs_to :patient, foreign_key: :pid
  belongs_to :doctor
end
