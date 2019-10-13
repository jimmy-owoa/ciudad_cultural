class Postulation < ApplicationRecord
  has_many_attached :images

  belongs_to :user_event, class_name: "User::Event"
end
