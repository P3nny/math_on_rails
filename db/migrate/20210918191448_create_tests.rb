class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :number_of_tasks
      t.integer :correct
      t.integer :incorrect
      t.text :tasks, default: [].to_yaml

      t.timestamps
    end
  end
end
