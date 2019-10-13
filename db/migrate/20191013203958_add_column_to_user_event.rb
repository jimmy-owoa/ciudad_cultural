class AddColumnToUserEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_events, :postulations, foreign_key: true
  end
end
