class CreateBodyInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :body_infos do |t|
      t.integer :weight
      t.integer :goal
      t.timestamps
    end
  end
end
