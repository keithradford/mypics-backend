module Types
  class QueryType < Types::BaseObject
    # Fetching all users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    # Fetching a given user
    field :user, Types::UserType, null: false do
      # Passing arguemts used to identify user
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    # Fetching photos for a given user
    field :photos, [Types::PhotoType], null: false do
      # Passing arguemts used to identify user
      argument :id, ID, required: true
    end

    def photos(id:)
      User.find(id).photos
    end
  end
end
