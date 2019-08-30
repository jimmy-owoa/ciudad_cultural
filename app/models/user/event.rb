class User::Event < ApplicationRecord
    has_many_attached :images
    has_one_attached :file

    scope :next_events, -> { where("date > ?", Date.today ) }
    scope :past_events, -> { where("date < ?", Date.today ) }
    scope :talca_events, -> { where(is_talca: true) }

end
