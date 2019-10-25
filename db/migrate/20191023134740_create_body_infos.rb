class CreateBodyInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :body_infos do |t|
      t.integer :weight
      t.integer :goal
      t.integer :gender_id
      t.integer :user_id
      t.timestamps
    end
  end
end
