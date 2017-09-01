class AddMatchedStatusToMentees < ActiveRecord::Migration[5.1]
  def change
    add_column :mentees, :matched, :boolean, default: false
  end
end
