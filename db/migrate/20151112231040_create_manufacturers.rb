class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|

      t.string :name
      t.string :description
      t.string :website

      t.timestamps null: false
    end
  end
end
