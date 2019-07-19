class User::Member < ApplicationRecord
    has_one_attached :image
end
