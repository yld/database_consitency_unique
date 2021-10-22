class CreateSecondSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :second_subscriptions do |t|
      t.references :second_subscriber, polymorphic: true, null: false

      t.timestamps
    end
    add_index :second_subscriptions, %i[second_subscriber_id second_subscriber_type], name: 'second_subscriptions_index'
  end
end
