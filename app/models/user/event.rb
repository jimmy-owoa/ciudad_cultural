class User::Event < ApplicationRecord
    has_many_attached :images

    scope :next_events, -> { where("date > ?", Date.today ) }
    scope :past_events, -> { where("date < ?", Date.today ) }
end
