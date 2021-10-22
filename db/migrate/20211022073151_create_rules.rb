class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.references :thing, null: false, foreign_key: true, index: false
      t.references :user, null: false, foreign_key: true, index: false

      t.timestamps
    end

    add_index :rules, %i[user_id thing_id], unique: true
  end
end
