module Types
  class PhotoType < Types::BaseObject
    field :id, ID, null: false
    field :width, Integer, null: true
    field :height, Integer, null: true
    field :regularUrl, String, null: true
    field :smallUrl, String, null: true

    field :user, Types::UserType, null: true, method: :user
  end
end
