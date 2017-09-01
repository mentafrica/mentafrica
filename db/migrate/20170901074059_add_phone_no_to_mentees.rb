class AddPhoneNoToMentees < ActiveRecord::Migration[5.1]
  def change
    add_column :mentees, :phone_no, :string
  end
end
