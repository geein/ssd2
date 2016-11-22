class Problem < ApplicationRecord
  validates_presence_of :content, :user_id

  belongs_to :user

  enum category: { fear: 0, worry: 1 }

  scope :by_step, -> (step) do
    if step == 4
      where.not(solution: nil)
    elsif step == 3
      where(solution: nil).where.not(due_date: nil)
    elsif step == 2
      where(solution: nil, due_date: nil).where.not(category: nil)
    else
      where(solution: nil, due_date: nil, category: nil)
    end
  end

  def step
    if solution.present?
      4
    elsif due_date.present?
      3
    elsif category.present?
      2
    else
      1
    end
  end
end
