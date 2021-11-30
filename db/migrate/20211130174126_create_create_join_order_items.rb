class CreateCreateJoinOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :create_join_order_items do |t|

      t.timestamps
    end
  end
end
