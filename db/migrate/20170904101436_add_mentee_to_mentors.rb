class AddMenteeToMentors < ActiveRecord::Migration[5.1]
  def change
    add_column :mentors, :mentee_id, :integer
  end
end
