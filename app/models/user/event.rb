class User::Event < ApplicationRecord
  has_many_attached :images
  has_one_attached :file
  has_one_attached :main_image
  has_one_attached :video

  has_many :postulations, class_name: "Postulation", foreign_key: :user_event_id, dependent: :destroy

  scope :next_events, -> { where("date > ?", Date.today) }
  scope :past_events, -> { where("date < ?", Date.today) }
  scope :talca_events, -> { where(is_talca: true) }
  scope :active_events, -> { where(active: true) }

  before_save :unique_slug

  def unique_slug
    self.slug = if self.slug.blank?
                  set_slug(self.title.parameterize)
                else
                  set_slug(self.slug.parameterize)
                end
  end

  def set_slug(val)
    event_by_slug = User::Event.find_by(slug: val)
    if event_by_slug.present? && event_by_slug != self
      random_number = rand(1000..9999)
      slug_split = val.split("-")
      if slug_split[-1].match? /^[0-9]+$/
        if slug_split.count > 1
          temp = slug_split[0..-2].join("-")
        else
          temp = slug_split[0]
        end
        set_slug(temp + "-" + random_number.to_s)
      else
        set_slug(val + "-" + random_number.to_s)
      end
    else
      val
    end
  end
end
