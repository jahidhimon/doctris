class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :patients, through: :appointments

  def self.ransackable_associations(auth_object = nil)
    ["appointments", "patients"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["age", "created_at", "department_id", "email", "encrypted_password", "experience", "id", "id_value", "name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "specialty", "updated_at"]
  end
end
