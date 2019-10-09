class OutcomeItem < ApplicationRecord
  has_many :outcomes
  has_many :budgets
end
