class AddMentorToMentees < ActiveRecord::Migration[5.1]
  def change
    add_column :mentees, :mentor_id, :integer
  end
end
