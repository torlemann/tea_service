class AddPriceToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :price, :float
  end
end
