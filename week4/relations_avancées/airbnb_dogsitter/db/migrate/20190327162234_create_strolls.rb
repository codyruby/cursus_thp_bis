class CreateStrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :strolls do |t|
      t.string :name

      t.belongs_to :dogsitter, index: true
      t.belongs_to :dog, index: true
      t.timestamps
    end
  end
end
