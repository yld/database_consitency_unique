class CreateThirdUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :third_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
