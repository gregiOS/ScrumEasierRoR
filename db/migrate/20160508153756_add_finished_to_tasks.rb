class AddFinishedToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :finished, :integer
  end
end
