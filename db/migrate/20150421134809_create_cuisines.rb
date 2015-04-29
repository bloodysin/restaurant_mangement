class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :name
      t.text :ingredients

      t.timestamps null: false
    end

    add_index :id
  end
end
