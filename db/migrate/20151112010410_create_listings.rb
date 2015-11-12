class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|

      t.integer :year
      t.string :make
      t.string :model
      t.string :submodel
      t.text :description
      t.integer :wheelsize
      t.integer :mileage
      
      t.timestamps null: false
    end
  end
end
