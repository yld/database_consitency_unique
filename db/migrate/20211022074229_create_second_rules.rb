class CreateSecondRules < ActiveRecord::Migration[6.1]
  def change
    create_table :second_rules do |t|
      t.references :second_thing, null: false, foreign_key: true, index: false
      t.references :second_user, null: false, foreign_key: true, index: false

      t.timestamps
    end
    add_index :second_rules, %i[second_user_id second_thing_id]
  end
end
