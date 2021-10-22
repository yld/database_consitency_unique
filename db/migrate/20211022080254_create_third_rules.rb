class CreateThirdRules < ActiveRecord::Migration[6.1]
  def change
    create_table :third_rules do |t|
      t.references :third_thing, null: false, foreign_key: true, index: false
      t.references :third_user, null: false, foreign_key: true, index: false

      t.timestamps
    end
    add_index :third_rules, %i[third_user_id third_thing_id], unique: true
  end
end
