class AddEventIdToUserEvents < ActiveRecord::Migration
  def change
    add_column :user_events, :event_id, :integer
  end
end
