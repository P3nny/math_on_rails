class Task < ApplicationRecord

  def answered?
    correct + incorrect > 0
  end
end
