class CreateUserCuisines < ActiveRecord::Migration
  def change
    create_table :user_cuisines do |t|
      t.integer :user_id
      t.integer :cuisine_id
      t.datetime :date
      t.boolean :is_evening

      t.timestamps null: false
    end
  end
end
