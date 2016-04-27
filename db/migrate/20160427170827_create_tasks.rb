class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :sprint_id
      t.string :name
      t.integer :importance
      t.integer :initial_estimate
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
