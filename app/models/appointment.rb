class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "doctor_id", "id", "id_value", "patient_id", "scheduled", "updated_at"]
  end
end
