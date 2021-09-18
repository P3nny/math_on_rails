# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def multiplication
  for i in 0..10
    for j in 0..10
      Task.create([calculation_type: 'multiplication', num1: i, num2: j, res: i*j])
    end
  end
end

multiplication

def division
  for i in 0..10
    for j in 1..10
      Task.create([calculation_type: 'division', num1: i*j, num2: j, res: i])
    end
  end
end

division


