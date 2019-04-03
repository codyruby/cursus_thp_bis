class AddCityRefToPatients < ActiveRecord::Migration[5.1]
  def change
    add_reference :patients, :city, foreign_key: true
  end
end
