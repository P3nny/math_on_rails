class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string  :calculation_type
      t.integer :num1
      t.integer :num2
      t.integer :res
      t.integer :correct, default: 0
      t.integer :incorrect, default: 0
      t.belongs_to :test

      t.timestamps
    end
  end
end
