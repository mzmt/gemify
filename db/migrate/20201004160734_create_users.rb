class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :twitter_id, null: false
      t.string :email

      t.timestamps
    end
  end
end
