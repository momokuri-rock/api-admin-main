class AddEventIdToIssue < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :event_id, :integer
  end
end
