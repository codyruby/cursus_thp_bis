class AddCityRefToDog < ActiveRecord::Migration[5.1]
  def change
    add_reference :dogs, :city, foreign_key: true
  end
end
