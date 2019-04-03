class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :fist_name
      t.string :last_name
      t.boolean :is_admin

      t.timestamps
    end
  end
end
