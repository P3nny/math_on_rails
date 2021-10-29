class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :number_of_tasks
      t.integer :number_of_correct
      t.integer :number_of_incorrect

      t.timestamps
    end
  end
end
