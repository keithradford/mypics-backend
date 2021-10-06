module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :create_photo, mutation: Mutations::CreatePhoto
    field :remove_photo, mutation: Mutations::RemovePhoto
  end
end
