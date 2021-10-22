class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.references :subscriber, polymorphic: true, null: false

      t.timestamps
    end
    add_index :subscriptions, %i[subscriber_id subscriber_type], unique: true
  end
end
