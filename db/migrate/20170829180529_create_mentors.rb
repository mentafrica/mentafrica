class CreateMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors do |t|
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
      t.string :phone_no
      t.string :company
      t.string :job_title
      t.string :industry_type

      t.timestamps
    end
  end
end
