class CreateUpdateBodyInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :update_body_infos do |t|
      t.integer :weight
      t.integer :user_id
      t.timestamps
    end
  end
end
