module Mutations
    class CreatePhoto < BaseMutation
        argument :width, Integer, required: true
        argument :height, Integer, required: true
        argument :urls, Types::Input::UrlInputType, required: true

        type Types::PhotoType

        def resolve(width: nil, height: nil, urls: nil)
            Photo.create!(
                width: width,
                height: height,
                smallUrl: urls['small'],
                regularUrl: urls['regular'],
                user: context[:current_user]
            )
        end
    end
end
