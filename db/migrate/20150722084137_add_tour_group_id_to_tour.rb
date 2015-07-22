class AddTourGroupIdToTour < ActiveRecord::Migration
  def change
    add_column :tours, :tour_group_id, :integer
  end
end
