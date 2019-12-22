class AddActiveToUserEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :user_events, :active, :boolean, default: true
  end
end
