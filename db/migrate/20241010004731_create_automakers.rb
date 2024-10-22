class CreateAutomakers < ActiveRecord::Migration[7.1]
  def change
    create_table :automakers do |t|
      t.string :name
      t.string :country
      t.integer :fundation_year

      t.timestamps
    end
  end
end
