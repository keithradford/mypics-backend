module Types
  class PhotoType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :width, Integer, null: true
    field :height, Integer, null: true
    field :urls, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
