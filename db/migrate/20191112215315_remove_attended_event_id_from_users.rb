class RemoveAttendedEventIdFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :attended_event_id, :integer
  end
end
