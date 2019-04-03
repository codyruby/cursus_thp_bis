class AddCityRefToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_reference :doctors, :city, foreign_key: true
  end
end
