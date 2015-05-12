class CreateProvideds < ActiveRecord::Migration
  def change
    create_table :provideds do |t|
      t.integer :cuisine_id
      t.integer :week
      t.boolean :is_evening

      t.timestamps null: false
    end
  end
end
