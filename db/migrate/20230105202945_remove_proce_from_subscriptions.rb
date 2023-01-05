class RemoveProceFromSubscriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :proce, :float
  end
end
