class User::Event < ApplicationRecord
  has_many_attached :images
  has_one_attached :file
  has_one_attached :main_image

  has_many :postulations, class_name: "Postulation"

  scope :next_events, -> { where("date > ?", Date.today) }
  scope :past_events, -> { where("date < ?", Date.today) }
  scope :talca_events, -> { where(is_talca: true) }
end
