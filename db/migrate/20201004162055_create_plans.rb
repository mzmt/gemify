class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string :twicall_url
      t.string :emoji, null: false

      t.timestamps
    end
    add_index :plans, [:user_id, :start_date, :end_date], unique: true
  end
end
