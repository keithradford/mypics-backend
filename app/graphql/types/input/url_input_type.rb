module Types
    module Input
        class UrlInputType < Types::BaseInputObject
            argument :regular, String, required: true
            argument :small, String, required: false
        end
    end
end