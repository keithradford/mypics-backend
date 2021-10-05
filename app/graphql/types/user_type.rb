module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :topics, [String], null: true
    field :photos, [Types::PhotoType], null: true
  end
end
