class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.float :weight
      t.float :bmi
      t.integer :user_id
      t.timestamps
    end
  end
end
