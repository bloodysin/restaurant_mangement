class AddCountToCuisine < ActiveRecord::Migration
  def change
    add_column :cuisines, :count, :integer, :default => 0
  end
end
