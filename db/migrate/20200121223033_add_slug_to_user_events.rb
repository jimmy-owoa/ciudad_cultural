class AddSlugToUserEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :user_events, :slug, :string
  end
end
