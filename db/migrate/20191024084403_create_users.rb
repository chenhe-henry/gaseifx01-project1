class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :user_name
      t.string :password_digest
      t.integer :age
      t.integer :gender_id
      t.integer :contact_info_id
      t.integer :location_id
      t.timestamps
    end
  end
end
