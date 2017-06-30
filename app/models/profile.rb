class Profile < ApplicationRecord
  belongs_to :user

  validates :name, :last_name, :nickname, :document, :date_of_birth, :phone, presence: true
end
