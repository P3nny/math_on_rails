class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string  :calculation_type
      t.integer :num1
      t.integer :num2
      t.integer :res
      t.boolean :correct
      t.integer :incorrect

      t.timestamps
    end
  end
end
