class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
