class AddColumnsToPostulations < ActiveRecord::Migration[5.2]
  def change
    add_column :postulations, :phone, :string
    add_column :postulations, :stand, :string
  end
end
