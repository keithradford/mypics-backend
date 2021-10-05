class Photo < ApplicationRecord
  belongs_to :user
  serialize :urls, JSON
end
