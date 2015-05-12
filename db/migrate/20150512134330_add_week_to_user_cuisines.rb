class AddWeekToUserCuisines < ActiveRecord::Migration
  def change
    add_column :user_cuisines, :week, :integer
  end
end
