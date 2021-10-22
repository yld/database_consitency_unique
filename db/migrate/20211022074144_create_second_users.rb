class CreateSecondUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :second_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
