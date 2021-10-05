module Types
  class PhotoType < Types::BaseObject
    field :id, ID, null: false
    field :width, Integer, null: true
    field :height, Integer, null: true
    field :urls, Types::Input::UrlInputType, null: true

    field :user, Types::UserType, null: true, method: :user
  end
end
