class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :plan, index: true, foreign_key: true, null: false

      t.timestamps
    end
    add_index :attends, [:user_id, :plan_id], unique: true
  end
end
