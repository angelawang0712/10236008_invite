class AddActivityId < ActiveRecord::Migration
  def change
    add_column  :Invites, :activity_id, :integer
  end
end
