class CreateDogParks < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
