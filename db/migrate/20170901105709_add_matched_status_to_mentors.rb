class AddMatchedStatusToMentors < ActiveRecord::Migration[5.1]
  def change
    add_column :mentors, :matched, :boolean, default: false
  end
end
