class CreateVehicleModels < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicle_models do |t|
      t.string :name
      t.references :automaker, null: false, foreign_key: true, type: :integer
      t.decimal :reference_value
      t.decimal :engine_size
      t.boolean :turbo
      t.boolean :automatic

      t.timestamps
    end
  end
end