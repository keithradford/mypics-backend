class User < ApplicationRecord
    has_many :photos
    serialize :topics
end
