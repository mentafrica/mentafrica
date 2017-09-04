class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :mentor_id
      t.integer :mentee_id
      t.string :content
      t.boolean :seen, default: false

      t.timestamps
    end
  end
end
