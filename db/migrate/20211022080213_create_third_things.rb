class CreateThirdThings < ActiveRecord::Migration[6.1]
  def change
    create_table :third_things do |t|
      t.string :name

      t.timestamps
    end
  end
end
