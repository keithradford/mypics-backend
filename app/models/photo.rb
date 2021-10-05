class Photo < ApplicationRecord
  has_secure_password

  belongs_to :user
  serialize :urls, JSON
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
