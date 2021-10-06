module Mutations
    class RemovePhoto < BaseMutation
        argument :id, ID, required: true

        type Types::PhotoType

        def resolve(id: nil)
            Photo.destroy(id)
        end
    end
end
