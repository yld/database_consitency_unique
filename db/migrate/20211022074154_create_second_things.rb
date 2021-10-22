class CreateSecondThings < ActiveRecord::Migration[6.1]
  def change
    create_table :second_things do |t|
      t.string :name

      t.timestamps
    end
  end
end
