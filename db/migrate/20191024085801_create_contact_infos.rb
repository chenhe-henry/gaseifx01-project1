class CreateContactInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_infos do |t|
      t.text :email_address
      t.integer :phone_number
      t.timestamps
    end
  end
end
