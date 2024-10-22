class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.references :vehicle_model, null: false, foreign_key: true, type: :integer
      t.string :color
      t.integer :manufacturing_year
      t.integer :model_year
      t.decimal :value
      t.string :license_plate
      t.boolean :sold

      t.timestamps
    end
  end
end
