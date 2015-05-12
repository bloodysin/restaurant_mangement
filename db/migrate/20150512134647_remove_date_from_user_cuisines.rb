class RemoveDateFromUserCuisines < ActiveRecord::Migration
  def change
    remove_column :user_cuisines, :date, :datetime
  end
end
