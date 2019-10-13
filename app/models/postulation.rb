class Postulation < ApplicationRecord
  belongs_to :user_event, class_name: "User::Event"
end
