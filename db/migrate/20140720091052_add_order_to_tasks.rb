class AddOrderToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :order_num, :integer
  end
end
