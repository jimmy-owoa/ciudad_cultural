class CreatePostulations < ActiveRecord::Migration[5.2]
  def change
    create_table :postulations do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.text :message
      t.references :user_event, foreign_key: true

      t.timestamps
    end
  end
end
