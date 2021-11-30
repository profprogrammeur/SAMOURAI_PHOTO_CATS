class CreateJoinTableCartItems < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Carts, :Items do |t|
      # t.index [:cart_id, :item_id]
      # t.index [:item_id, :cart_id]
    end
  end
end
