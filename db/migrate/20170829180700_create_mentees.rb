class CreateMentees < ActiveRecord::Migration[5.1]
  def change
    create_table :mentees do |t|
      t.integer :user_id
      t.string :email
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state_province
      t.string :zip_postal
      t.string :current_country
      t.string :counry_of_origin
      t.string :college_level
      t.string :college_name
      t.string :college_major
      t.string :about
      t.string :industry_interest

      t.timestamps
    end
  end
end
