class CreateUserMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_members do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.text :summary
      t.string :phone

      t.timestamps
    end
  end
end
