class User::Event < ApplicationRecord
    has_many_attached :images
end
