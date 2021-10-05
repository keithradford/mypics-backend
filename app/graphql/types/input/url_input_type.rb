module Types
    module Input
        class UrlInputType < Types::BaseInputObject
            argument :large, String, required: false
            argument :regular, String, required: true
            argument :raw, String, required: false
            argument :small, String, required: false
        end
    end
end