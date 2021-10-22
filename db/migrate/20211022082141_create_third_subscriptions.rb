class CreateThirdSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :third_subscriptions do |t|
      t.references :third_subscriber, polymorphic: true, null: false

      t.timestamps
    end
    add_index :third_subscriptions, %i[third_subscriber_id third_subscriber_type], unique: true,
                                                                                   name: 'third_subscriptions_uniq'
  end
end
