class CreateSecondGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :second_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
